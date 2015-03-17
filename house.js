//============================================================================
// Name        : house.js
// Author      : Abby Carey & Tina Pi
// Assignment  : 3D House Explorer
// Description : This is a 3D house for you to explore from both a floorplan
//               view as well as a first-person point of view
//============================================================================


// Global variables
var RENDER_WIDTH = window.innerWidth, RENDER_HEIGHT = window.innerHeight;
var controls,renderer,scene,camera, container;
var ground,houseContainer;
var groundMaterial,texture_update;
var light;
var gui;
var mouse = { x: 0, y: 0 }, INTERSECTED;
var targetList = []; 				// list of objects to highlight
var collisionList = []; 			// list of objects to collide with
var clock = new THREE.Clock();		// clock used for firstPerson controls
var canvas1, context1, textureC;
var firstPerson = false; 			// toggle to see if in firstPerson view
var guiDestroyFlag = false; 		// toggle used to indicate whether the current GUI needs to be destroyed
var roofMaterial;
// floor planes
var plane, kitchenPlane, bedPlane, bathroomPlane, diningPlane, livingPlane;
// floor textures
var textureBed, textureBath, textureKitchen, textureLiving, textureDining, textureHall1, textureHall2, textureGround;
// for mirror material
var bathMirCube, bathMirCubeCamera; 
var bedMirCube, bedMirCubeCamera; 
// lights
var bedroomLamp, diningroomLight, livingroomLight, bathroomLight, kitchenLight;
init();
animate();


function init()
{
	container = document.getElementById("container");

	renderer = new THREE.WebGLRenderer({ antialias:true });
	renderer.setSize(RENDER_WIDTH,RENDER_HEIGHT);
	renderer.domElement.style.backgroundColor = '#000000';
	renderer.shadowMapEnabled = true;
	document.body.appendChild( renderer.domElement );

	container.appendChild(renderer.domElement);
	scene = new THREE.Scene();
	
	// add camera to the scene
	camera = new THREE.PerspectiveCamera(45, RENDER_WIDTH / RENDER_HEIGHT, 0.1, 10000);
	camera.position.y = 240;
	camera.position.x = 20;
	camera.position.z = -20;
	scene.add(camera);
	// set default controller to orbit
	controls = new THREE.OrbitControls(camera, renderer.domElement);
	// add window resize controller
	window.addEventListener( 'resize', onWindowResize, false );
	
	// Skybox: Code modifed version of https://stemkoski.github.io/Three.js/Skybox.html
	var imagePrefix = "texture/skybox-";
	var directions  = ["xpos", "xneg", "ypos", "yneg", "zpos", "zneg"];
	var imageSuffix = ".png";
	var skyGeometry = new THREE.BoxGeometry( 600, 400, 600 );	
	var materialArray = [];
	for (var i = 0; i < 6; i++)
		materialArray.push( new THREE.MeshBasicMaterial({
			map: THREE.ImageUtils.loadTexture( imagePrefix + directions[i] + imageSuffix ),
			side: THREE.BackSide
		}));
	var skyMaterial = new THREE.MeshFaceMaterial( materialArray );
	var skyBox = new THREE.Mesh( skyGeometry, skyMaterial );
	scene.add( skyBox );
	
	
	// add lights to the scene -- general lights
	var ambientLight = new THREE.AmbientLight( 0x554433);
	light = new THREE.DirectionalLight( 0xffffff, 1.0 );
	light.position.set( 200, 400, 500 );
	
	var light2 = new THREE.DirectionalLight( 0xffffff, 0.8 );
	light2.position.set( -400, 200, -300 );

	var light3 = new THREE.DirectionalLight( 0xb99bba, 0.7 );
	light3.position.set( 200, 100, -300);

	scene.add(ambientLight);
	scene.add(light);
	scene.add(light2);
	scene.add(light3);

	//----------------------------lights for each room----------------------------------------
	// bedroom lamp light
	bedroomLamp = new THREE.PointLight(0xffff00, .1, 70);
	bedroomLamp.position.set(32, 35, -120);
	scene.add(bedroomLamp);

	// dining room light
	diningroomLight = new THREE.PointLight(0xffffff, .1, 50);
	diningroomLight.position.set(-27, 17, -70);
	scene.add(diningroomLight);

	// kitchen light
	kitchenLight = new THREE.PointLight(0xffff22, .1, 80);
	kitchenLight.position.set(-30, 17, -10);
	scene.add(kitchenLight);

	// bathroom light
	bathroomLight = new THREE.PointLight(0xffa500, .1, 25);
	bathroomLight.position.set(30, 18, -5);
	scene.add(bathroomLight);

	// living room light
	livingroomLight = new THREE.PointLight(0xaa00ff, .1, 28);
	livingroomLight.position.set(95, 19, -42);
	scene.add(livingroomLight);


	//---------------------------load house model from MAYA----------------------------------
	houseContainer = new THREE.Group();

    // loader to load in house model
    var loader = new THREE.OBJMTLLoader();
	loader.load('model/house2.obj','model/house2.mtl',function(object){
	    object.position.x = -10;
		object.castShadow = true;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		houseContainer.add(object);
		scene.add(houseContainer);
	});
	
	/////////////////////////////////////////////////////////////////////////////////
	// CREATE COLLIDABLE WALLS    ///////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////
	
	//OUTER WALLS
	//////////////////////////////////////////////////////////////
	// MATERIAL FOR ALL COLLISION WALLS
	material1 = new THREE.MeshPhongMaterial( {transparent: true, side: THREE.DoubleSide} );
	
	// Create collision wall right kitchen
	geometry1 = new THREE.PlaneBufferGeometry( 115,10 );
	material1.opacity = 0;
	wall1 = new THREE.Mesh( geometry1, material1 );
	wall1.position.set(15, 17, 28);
	scene.add( wall1 );
	// add wall to collidable objects list
	collisionList.push(wall1);
	
	// Create collision wall behind couch
	geometry2 = new THREE.PlaneBufferGeometry( 187,10 );
	wall2 = new THREE.Mesh( geometry2, material1 );
	wall2.position.set(106, 17, -40);
	wall2.rotation.y = 1.57
	scene.add( wall2 );
	// add wall to collidable objects list
	collisionList.push(wall2);	
	
	//Create collision wall for bedroom/dining room
	geometry3 = new THREE.PlaneBufferGeometry( 153,10 );
	wall3 = new THREE.Mesh( geometry3, material1 );
	wall3.position.set(35, 17, -131);
	scene.add( wall3 );
	// add wall to collidable objects list
	collisionList.push(wall3);	
	
	// Create collision wall for kitchen and dining room
	geometry4 = new THREE.PlaneBufferGeometry( 160,10 );
	wall4 = new THREE.Mesh( geometry4, material1 );
	wall4.position.set(-40, 17, -50);
	wall4.rotation.y = 1.57
	scene.add( wall4 );
	// add wall to collidable objects list
	collisionList.push(wall4);	
	
	
	// INNER WALLS
	//////////////////////////////////////////////////////////////
	
	// Create collision walls between bedroom and dining room
	geometry5 = new THREE.PlaneBufferGeometry( 70,10 );
	wall5 = new THREE.Mesh( geometry5, material1 );
	wall5.position.set(20, 17, -100);
	wall5.rotation.y = 1.57
	wall6 = new THREE.Mesh( geometry5, material1 );
	wall6.position.set(15, 17, -100);
	wall6.rotation.y = 1.57
	scene.add( wall5 );
	scene.add( wall6 );
	// add walls to collidable objects list
	collisionList.push(wall6);
	collisionList.push(wall5);
	
	// Create collision walls between kitchen and bathroom
	geometry7 = new THREE.PlaneBufferGeometry( 43,10 );
	wall7 = new THREE.Mesh( geometry7, material1 );
	wall7.position.set(17, 17, -17);
	wall7.rotation.y = 1.57
	wall8 = new THREE.Mesh( geometry7, material1 );
	wall8.position.set(14, 17, -17);
	wall8.rotation.y = 1.57
	scene.add( wall7 );
	scene.add( wall8 );
	// add walls to collidable objects list
	collisionList.push(wall7)
	collisionList.push(wall8);
	
	// Create collision walls between living room and bathroom
	geometry7 = new THREE.PlaneBufferGeometry( 43,10 );
	wall7 = new THREE.Mesh( geometry7, material1 );
	wall7.position.set(49, 17, -17);
	wall7.rotation.y = 1.57
	wall8 = new THREE.Mesh( geometry7, material1 );
	wall8.position.set(44, 17, -17);
	wall8.rotation.y = 1.57
	scene.add( wall7 );
	scene.add( wall8 );
	// add walls to collidable objects list
	collisionList.push(wall7);
	collisionList.push(wall8);
	
	// Create collision walls between hall1 and bathroom
	geometry9 = new THREE.PlaneBufferGeometry( 15,10 );
	wall9 = new THREE.Mesh( geometry9, material1 );
	wall9.position.set(22, 17, -38);
	wall10 = new THREE.Mesh( geometry9, material1 );
	wall10.position.set(22, 17, -35);
	scene.add( wall9 );
	scene.add( wall10 );
	// add walls to collidable objects list
	collisionList.push(wall9);
	collisionList.push(wall10);

	
	// Create collision walls between bedroom and living room
	geometry11 = new THREE.PlaneBufferGeometry( 62,10 );
	wall11 = new THREE.Mesh( geometry11, material1 );
	wall11.position.set(48, 17, -64);
	wall12 = new THREE.Mesh( geometry11, material1 );
	wall12.position.set(48, 17, -68);
	scene.add( wall11 );
	scene.add( wall12 );
	// add walls to collidable objects list
	collisionList.push(wall11);
	collisionList.push(wall12);
	
	// Create collision walls between hall2 and bathroom
	geometry13 = new THREE.PlaneBufferGeometry( 33,10 );
	wall13 = new THREE.Mesh( geometry13, material1 );
	wall13.position.set(32, 17, 7);
	wall14 = new THREE.Mesh( geometry13, material1 );
	wall14.position.set(32, 17, 4);
	scene.add( wall13 );
	scene.add( wall14 );
	// add walls to collidable objects list
	collisionList.push(wall13);
	collisionList.push(wall14);
	
	// Create collision walls between dining and kitchen
	geometry15 = new THREE.PlaneBufferGeometry( 31,10 );
	wall15 = new THREE.Mesh( geometry15, material1 );
	wall15.position.set(-25, 17, -47);
	wall16 = new THREE.Mesh( geometry15, material1 );
	wall16.position.set(-25, 17, -50);
	scene.add( wall15 );
	scene.add( wall16 );
	// add walls to collidable objects list
	collisionList.push(wall15);
	collisionList.push(wall16);
	
	// Create collision wall at enterence
	geometry17 = new THREE.PlaneBufferGeometry( 25,10 );
	wall17 = new THREE.Mesh( geometry17, material1 );
	wall17.position.set(74, 17, 43);
	wall17.rotation.y = 1.57
	scene.add( wall17 );
	// add walls to collidable objects list
	collisionList.push(wall17);

	
	
	
	
	// Initialize floor textures
	textureBed = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );  
	setFloorTextureProperties(textureBed);
	textureBath = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" ); 
	setFloorTextureProperties(textureBath);
	textureKitchen = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" ); 
	setFloorTextureProperties(textureKitchen);
	textureLiving = THREE.ImageUtils.loadTexture( "texture/floor.jpg" ); 
	setFloorTextureProperties(textureLiving);
	textureDining = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" ); 
	setFloorTextureProperties(textureDining);
	textureHall1 = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" ); 
	setFloorTextureProperties(textureHall1);
	textureHall2 = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
	setFloorTextureProperties(textureHall2);
	textureGround = THREE.ImageUtils.loadTexture( "texture/grass.png" );
	setGroundTextureProperties(textureGround);
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Roof and Ground         ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	
	// Ground plane	
	var planeGeometry = new THREE.PlaneBufferGeometry( 300, 420 );
	var planeMaterial = new THREE.MeshLambertMaterial( {map: textureGround, side: THREE.DoubleSide} );
	plane = new THREE.Mesh( planeGeometry, planeMaterial );
	plane.position.set(50, 0, -30);
	plane.receiveShadow = true;
	plane.castShadow = false;
	plane.rotation.x = 1.57;
	scene.add( plane ); 
	
	// Roof plane
	var roofPts = [];
	roofPts.push( new THREE.Vector2 ( 0, 0 ) ); 
	roofPts.push( new THREE.Vector2 ( 151, 0 ) );
	roofPts.push( new THREE.Vector2 ( 151, 189 ) );
	roofPts.push( new THREE.Vector2 ( 117, 189 ) );
	roofPts.push( new THREE.Vector2 ( 117, 164 ) );
	roofPts.push( new THREE.Vector2 ( 0, 164 ) );
	roofPts.push( new THREE.Vector2 ( 0, 0 ) );

	var roofShape = new THREE.Shape( roofPts );
	var roofGeometry = new THREE.ShapeGeometry( roofShape );
	roofMaterial = new THREE.MeshBasicMaterial( {color: 0xd3d3d3, side: 
	THREE.DoubleSide, transparent: true} );
	var roof = new THREE.Mesh( roofGeometry, roofMaterial );
	roof.position.set( -44,25.2,-134 );
	roof.rotation.x = 1.57;
	roofMaterial.opacity = 0;
	scene.add( roof );	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Living Room             ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// Living room floor plane
	var livingPts = [];
	livingPts.push( new THREE.Vector2 ( 0, 0 ) );
	livingPts.push( new THREE.Vector2 ( 60.6, 0 ) );
	livingPts.push( new THREE.Vector2 ( 60.6, 122 ) );
	livingPts.push( new THREE.Vector2 ( 27, 122 ) );
	livingPts.push( new THREE.Vector2 ( 27, 96 ) );
	livingPts.push( new THREE.Vector2 ( 0, 96 ) );
	livingPts.push( new THREE.Vector2 ( 0, 0 ) );

	var livingShape = new THREE.Shape( livingPts );
	var livingGeometry = new THREE.ShapeGeometry( livingShape );
	var livingMaterial = new THREE.MeshLambertMaterial( {map: textureLiving, side: 
	THREE.DoubleSide} );
	livingPlane = new THREE.Mesh( livingGeometry, livingMaterial );
	// Set position and rotate to be flat against ground
	livingPlane.position.set( 47,.4,-66.7 );
	livingPlane.rotation.x = 1.57;
	livingPlane.name = "Living Room";
	scene.add( livingPlane );	
	// allow mesh to be clicked
	targetList.push(livingPlane);
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Bathroom                ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// bathroom room floor plane
	var bathroomPts = [];
	bathroomPts.push( new THREE.Vector2 ( 0, 0 ) );
	bathroomPts.push( new THREE.Vector2 ( 32, 0 ) );
	bathroomPts.push( new THREE.Vector2 ( 32, 44 ) );
	bathroomPts.push( new THREE.Vector2 ( 0, 44 ) );
	bathroomPts.push( new THREE.Vector2 ( 0, 0 ) );
	
	var bathroomShape = new THREE.Shape( bathroomPts );
	var bathroomGeometry = new THREE.ShapeGeometry( bathroomShape );
	var bathroomMaterial = new THREE.MeshLambertMaterial( {map: textureBath, side: 
	THREE.DoubleSide, transparent: false} );
	bathroomPlane = new THREE.Mesh( bathroomGeometry, bathroomMaterial );
	// Set position and rotate to be flat against ground
	bathroomPlane.position.set( 15.5,.4,-38 );
	bathroomPlane.rotation.x = 1.57;
	bathroomPlane.name = "Bathroom";
	scene.add( bathroomPlane );	
	// Is highlightable
	targetList.push(bathroomPlane);
	
	// Bathroom mirror
	var bathMirGeom = new THREE.PlaneBufferGeometry(6.5, 8.9)
	bathMirCubeCamera = new THREE.CubeCamera( .1, 200, 512 );
	scene.add( bathMirCubeCamera );
	// Map the mirrorcamera to the plane
	var bathMirCubeMat = new THREE.MeshBasicMaterial( { envMap: bathMirCubeCamera.renderTarget } );
	bathMirCube = new THREE.Mesh( bathMirGeom, bathMirCubeMat );
	// Set position and rotate to be flat against wall
	bathMirCube.position.set(37.5,17,4.65);
	bathMirCube.rotation.y = 3.14;
	// Position cube camera to be acurate reflection
	bathMirCubeCamera.position.x = 37.5;
	bathMirCubeCamera.position.y = 17;
	bathMirCubeCamera.position.z = 4.65;
	scene.add(bathMirCube);	
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Kitchen                ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// kitchen room floor plane
	var kitchenPts = [];
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 60.7, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 60.7, 78 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 78 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );
	
	var kitchenShape = new THREE.Shape( kitchenPts );
	var kitchenGeometry = new THREE.ShapeGeometry( kitchenShape );
	var kitchenMaterial = new THREE.MeshLambertMaterial( {map: textureKitchen, side: 
	THREE.DoubleSide, transparent: false} );
	kitchenPlane = new THREE.Mesh( kitchenGeometry, kitchenMaterial );
	// Set position and rotate to be flat against ground
	kitchenPlane.position.set( -45,.4,-48.5 );
	kitchenPlane.rotation.x = 1.57;
	kitchenPlane.name = "Kitchen";
	scene.add( kitchenPlane );	
	// Is highlightable
	targetList.push(kitchenPlane);

	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Dining room                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// dining room floor plane
	var diningPts = [];
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );
	diningPts.push( new THREE.Vector2 ( 60.8, 0 ) );
	diningPts.push( new THREE.Vector2 ( 60.8, 85.8 ) );
	diningPts.push( new THREE.Vector2 ( 0, 85.8 ) );
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );
	
	var diningShape = new THREE.Shape( diningPts );
	var diningGeometry = new THREE.ShapeGeometry( diningShape );
	var diningMaterial = new THREE.MeshLambertMaterial( {map: textureDining, side: 
	THREE.DoubleSide} );
	diningPlane = new THREE.Mesh( diningGeometry, diningMaterial );
	// Set position and rotate to be flat against ground
	diningPlane.position.set( -45,.4,-134 );
	diningPlane.rotation.x = 1.57;
	diningPlane.name = "Dining Room";
	scene.add( diningPlane );
	// Is highlightable
	targetList.push(diningPlane);
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Bedroom                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// bedroom floor plane
	var bedPts = [];
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );
	bedPts.push( new THREE.Vector2 ( 91, 0 ) );
	bedPts.push( new THREE.Vector2 ( 91, 67.5 ) );
	bedPts.push( new THREE.Vector2 ( 0, 67.5 ) );
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );

	
	var bedShape = new THREE.Shape( bedPts );
	var bedGeometry = new THREE.ShapeGeometry( bedShape );
	var bedMaterial = new THREE.MeshLambertMaterial( {map: textureBed, side: 
	THREE.DoubleSide} );
	bedPlane = new THREE.Mesh( bedGeometry, bedMaterial );
	// Set position and rotate to be flat against ground
	bedPlane.position.set( 16,.4,-133.5 );
	bedPlane.rotation.x = 1.57;
	bedPlane.name = "Bedroom";
	scene.add( bedPlane );
	// Is highlightable
	targetList.push(bedPlane);
	
	// Load custom shader
	var myMaterial = new THREE.ShaderMaterial({
		vertexShader: document.getElementById( 'vertexshader' ).textContent,
		fragmentShader: document.getElementById( 'fragmentshader' ).textContent,
	});
	myMaterial.side = THREE.DoubleSide;

	// Add rainbow wall color plane (mirror side)
	geometry18 = new THREE.PlaneBufferGeometry( 64,25 );
	wallShade = new THREE.Mesh( geometry18, myMaterial );
	wallShade.position.set(48, 13, -66.8);
	scene.add(wallShade);
	// Add rainbow wall color plane (closet side)
	geometry19 = new THREE.PlaneBufferGeometry( 67,25 );
	wallShade2 = new THREE.Mesh( geometry19, myMaterial );
	wallShade2.rotation.y = 1.57;
	wallShade2.position.set(106.28, 13, -99.5);
	scene.add(wallShade2);
	
	
	
	// Bedroom mirror
	var bedMirGeom = new THREE.PlaneBufferGeometry(12, 19)
	bedMirCubeCamera = new THREE.CubeCamera( .1, 400, 512 );
	scene.add( bedMirCubeCamera );
	var bedMirCubeMat = new THREE.MeshBasicMaterial( { envMap: bedMirCubeCamera.renderTarget } );
	bedMirCube = new THREE.Mesh( bedMirGeom, bedMirCubeMat );
	// Set position and rotate to be flat against wall
	bedMirCube.position.set(52,13,-67);
	bedMirCube.rotation.y = 3.14;
	// Set position of cube camera for acurate reflection
	bedMirCubeCamera.position.y = 13;
	bedMirCubeCamera.position.x = 52;
	bedMirCubeCamera.position.z = -67;
	scene.add(bedMirCube);	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Hall 1                     ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	var hall1Pts = [];
	hall1Pts.push( new THREE.Vector2 ( 0, 0 ) );
	hall1Pts.push( new THREE.Vector2 ( 31.5, 0 ) );
	hall1Pts.push( new THREE.Vector2 ( 31.5, 29.1 ) );
	hall1Pts.push( new THREE.Vector2 ( 0, 29.1 ) );
	hall1Pts.push( new THREE.Vector2 ( 0, 0 ) );

	
	var hall1Shape = new THREE.Shape( hall1Pts );
	var hall1Geometry = new THREE.ShapeGeometry( hall1Shape );
	var hall1Material = new THREE.MeshLambertMaterial( {map: textureHall1, side: 
	THREE.DoubleSide} );
	hall1Plane = new THREE.Mesh( hall1Geometry, hall1Material );
	// Set position and rotate to be flat against ground
	hall1Plane.position.set( 15.5, .4, -67 );
	hall1Plane.rotation.x = 1.57;
	scene.add( hall1Plane );	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Hall 2                     ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	var hall2Pts = [];
	hall2Pts.push( new THREE.Vector2 ( 0, 0 ) );
	hall2Pts.push( new THREE.Vector2 ( 32.5, 0 ) );
	hall2Pts.push( new THREE.Vector2 ( 32.5, 24.5 ) );
	hall2Pts.push( new THREE.Vector2 ( 0, 24.5 ) );
	hall2Pts.push( new THREE.Vector2 ( 0, 0 ) );

	
	var hall2Shape = new THREE.Shape( hall2Pts );
	var hall2Geometry = new THREE.ShapeGeometry( hall2Shape );
	var hall2Material = new THREE.MeshLambertMaterial( {map: textureHall2, side: 
	THREE.DoubleSide} );
	hall2Plane = new THREE.Mesh( hall2Geometry, hall2Material );
	// Set position and rotate to be flat against ground
	hall2Plane.position.set( 15, .4, 5 );
	hall2Plane.rotation.x = 1.57;
	scene.add( hall2Plane );
	
	
	// Make the topDown GUI
	makeGui1();
	

	
	// when the mouse moves, call the given function
	document.addEventListener( 'mousemove', onDocumentMouseMove, false );
	document.addEventListener( 'mousedown', onDocumentMouseDown, false );
	

		/////// draw text on canvas /////////

	// create a canvas element
	canvas1 = document.createElement('canvas');
    
	// canvas contents will be used for a texture
	textureC = new THREE.Texture(canvas1) 
	textureC.needsUpdate = true;
	
	
	var spriteMaterial = new THREE.SpriteMaterial( { map: textureC, useScreenCoordinates: true} );
	sprite1 = new THREE.Sprite( spriteMaterial );
	sprite1.scale.set(200,100,1.0);
	scene.add( sprite1 );	
	

	
	
	
	
	
	
}


/////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////       Top-down GUI             //////////////////////
/////////////////////////////////////////////////////////////////////////////////////
function makeGui1() {
	// Hold default values for the GUI
	if(guiDestroyFlag == true){
		gui.destroy();
		guiDestroyFlag = false;
	}
	
	var guiConfigData = function() {
		this.showControls = function() {
		};
		this.intensity = 1; // light intensity
		this.cameraView = "Top-down"; // defaults to "top-down" view
		// change the textures of the floors
		this.changeGround = "Grass";
		this.changeFloorLiving = "Tile";	
		this.changeFloorBed = "Dark brown wood";	
		this.changeFloorBath = "Stone";	
		this.changeFloorDining = "Light brown wood";	
		this.changeFloorKitchen = "Brown wood";	
		this.changeFloorHall1 = "Stone";	
		this.changeFloorHall2 = "Brown wood";	
		this.nightLight = false;
	};
	
	// Create the GUI frame
	var  guiConfig = new guiConfigData(  );
	gui = new dat.GUI( );
	var folder1 = gui.addFolder("General");
	var folder2 = gui.addFolder("Room Floors");
	gui.open();
	folder1.open();
	// Drop down menu to pick the view of the camera
	var view = folder1.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camera View")
			.onChange( function() {
		if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
			roofMaterial.opacity = 0;
			controls = new THREE.OrbitControls(camera, renderer.domElement);
			// topdown position
			camera.position.y = 240;
			camera.position.x = 20;
			camera.position.z = -20;
			firstPerson = false;
		} else if ( guiConfig.cameraView == 'First-person') { 
			// camera position for first person point of view
			roofMaterial.opacity = 1;
			controls = new THREE.FirstPersonControls(camera, renderer.domElement);
			controls.movementSpeed = 20;
			controls.lookSpeed = 0.05;
			controls.noFly = true;
			controls.lookVertical = false;
			controls.lon = 270;
			camera.position.z = 60;
			camera.position.y = 17;
			camera.position.x = 90;
			firstPerson = true;
			makeGui2();
		}
	});	

	// Change the ground texture	
	folder1.add( guiConfig, 'changeGround', ['Grass','Dirt','Sand','Rock','ToadStone']).name("Ground Texture")
		.onChange( function() {
			var tex; // texture to be loaded
			if (guiConfig.changeGround == 'Grass')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/grass.png" );
			} else if (guiConfig.changeGround == 'Dirt')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/dirt.jpg" );
			} else if (guiConfig.changeGround == 'Sand')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/sand.jpg" );
			} else if (guiConfig.changeGround == 'Rock')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/rock.png" );
			} else if (guiConfig.changeGround == 'ToadStone')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/ToadStone.png" );
			}	
			// Repeat texture and wrap it
			setGroundTextureProperties(tex);
			plane.material.map = tex;
	});
		
	
	// Change the living room floor texture	
	folder2.add( guiConfig, 'changeFloorLiving', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Living Room")
		.onChange( function() {
			var tex; // texture to be loaded
			if (guiConfig.changeFloorLiving == 'Tile')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
			} else if (guiConfig.changeFloorLiving == 'Brown wood')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
			} else if (guiConfig.changeFloorLiving == 'Stone')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
			} else if (guiConfig.changeFloorLiving == 'Dark brown wood')
			{
				tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
			} else
			{
				tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
			}
			
			// Repeat texture and wrap it
			setFloorTextureProperties(tex);
			livingPlane.material.map = tex;
	});
	// Change the bedroom floor texture
	folder2.add( guiConfig, 'changeFloorBed', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Bedroom")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorBed == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorBed == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorBed == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorBed == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorBed == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		bedPlane.material.map = tex;
});

	// Change the bathroom floor texture
	folder2.add( guiConfig, 'changeFloorBath', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Bathroom")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorBath == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorBath == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorBath == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorBath == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorBath == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		bathroomPlane.material.map = tex;
});

	// Change the kitchen floor texture
	folder2.add( guiConfig, 'changeFloorKitchen', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Kitchen")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorKitchen == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorKitchen == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorKitchen == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorKitchen == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorKitchen == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		kitchenPlane.material.map = tex;
});

	// Change the dining room floor texture
	folder2.add( guiConfig, 'changeFloorDining', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Dining Room")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorDining == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorDining == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorDining == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorDining == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorDining == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		diningPlane.material.map = tex;
});

	// Change hall 1 floor texture
	folder2.add( guiConfig, 'changeFloorHall1', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Hall 1")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorHall1 == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorHall1 == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorHall1 == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorHall1 == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorHall1 == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		hall1Plane.material.map = tex;
});

	// Change hall 2 floor texture
	folder2.add( guiConfig, 'changeFloorHall2', ['Tile','Light brown wood','Stone','Dark brown wood','Brown wood']).name("Hall 2")
	.onChange( function() {
		var tex; // texture to be loaded
		if (guiConfig.changeFloorHall2 == 'Tile')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
		}
		if (guiConfig.changeFloorHall2 == 'Brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
		}
		if (guiConfig.changeFloorHall2 == 'Stone')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
		}
		if (guiConfig.changeFloorHall2 == 'Dark brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
		}
		if (guiConfig.changeFloorHall2 == 'Light brown wood')
		{
			tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
		}
		
		// Repeat texture and wrap it
		setFloorTextureProperties(tex);
		hall2Plane.material.map = tex;
});

	// Slide bar used for changing light intensity - in lighting folder
	var intens = folder1.add( light, 'intensity' ).min(0).max(1).step(.1).listen();
	
	folder1.add(guiConfig,'nightLight',false).onChange(function(value){
		bedroomLamp.intensity = value;
		diningroomLight.intensity = value;
		kitchenLight.intensity = value;
		bathroomLight.intensity = value;
		livingroomLight.intensity = value;
	});


	folder1.add( guiConfig, 'showControls').name("Show Controls").onChange( function() {
	alert(
	"---------------------------------------------\n" 
	+ "Top-Down View Controls \n" 
	+ "--------------------------------------------- \n" 
	+ "Left Click + Move mouse = Rotate\n" 
	+ "Right Click + Move mouse = Pan\n" 
	+ "Scroll up = Zoom in\n" 
	+ "Scroll down = Zoom out \n\n" 
	+ "---------------------------------------------\n" 
	+ "First-Person View Controls \n" 
	+ "--------------------------------------------- \n"
	+ "Move Mouse = Look around \n"
	+ "W = Forward \n"
	+ "A = Strife Left \n"
	+ "S = Backward \n"
	+ "D = Strife Right"
	);
	} );

}
	
/////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////       First-person GUI             //////////////////
/////////////////////////////////////////////////////////////////////////////////////	
function makeGui2() {
	gui.destroy();
	roofMaterial.opacity = 1;
	// temp gui for firstperson view
	var	guiConfigData = function() {
		this.showControls = function() {
		};
		this.light = 0.7;
		this.nightLight = false;
		this.cameraView = "First-person"; // defaults to "top-down" view
	};

	// Create the GUI frame
	var  guiConfig = new guiConfigData(  );
	gui = new dat.GUI( );
	gui.open();
	
	var view = gui.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camera View")
			.onChange( function() {
		if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
			roofMaterial.opacity = 0;
			controls = new THREE.OrbitControls(camera, renderer.domElement);
			// topdown position
			camera.position.y = 240;
			camera.position.x = 20;
			camera.position.z = -20;
			firstPerson = false;
			guiDestroyFlag = true;
			makeGui1();
		} else if ( guiConfig.cameraView == 'First-person') { 
			// camera position for first person point of view
			roofMaterial.opacity = 1;
			controls = new THREE.FirstPersonControls(camera, renderer.domElement);
			controls.movementSpeed = 20;
			controls.lookSpeed = 0.05;
			controls.noFly = true;
			controls.lookVertical = false;
			controls.lon = 270;
			camera.position.y = 17;
			camera.position.x = 90;
			camera.position.z = 60;
			firstPerson = true;
		}
	});
	var intens = gui.add( light, 'intensity' ).min(0).max(1).step(.1).listen();

	gui.add ( guiConfig, 'nightLight', false ).onChange(function(value){
		bedroomLamp.intensity = value;
		diningroomLight.intensity = value;
		kitchenLight.intensity = value;
		bathroomLight.intensity = value;
		livingroomLight.intensity = value;
	});

	gui.add( guiConfig, 'showControls').name("Show Controls").onChange( function() {
	alert(
	"---------------------------------------------\n" 
	+ "Top-Down View Controls \n" 
	+ "--------------------------------------------- \n" 
	+ "Left Click + Move mouse = Rotate\n" 
	+ "Right Click + Move mouse = Pan\n" 
	+ "Scroll up = Zoom in\n" 
	+ "Scroll down = Zoom out \n\n" 
	+ "---------------------------------------------\n" 
	+ "First-Person View Controls \n" 
	+ "--------------------------------------------- \n"
	+ "Move Mouse = Look around \n"
	+ "W = Forward \n"
	+ "A = Strife Left \n"
	+ "S = Backward \n"
	+ "D = Strife Right"
	);
} );
	
}


// Helper function that sets the texture properties for floors
function setFloorTextureProperties(texture)
{
	texture.wrapS = texture.wrapT = THREE.RepeatWrapping;
	texture.repeat.set(20,20);
	texture.needsUpdate = true;
	texture.repeat.set( 1 / 10, 1 / 10 );
	texture.offset.set( 1, 1 );
}

// Helper function that sets the texture properties for the ground
function setGroundTextureProperties(texture)
{
	texture.wrapS = texture.wrapT = THREE.RepeatWrapping;
	texture.repeat.set(15,15);
	texture.needsUpdate = true;
	texture.offset.set( 1, 1 );
}
	
	


function onDocumentMouseDown( event ) 
{		
	// only register left click on room floors
	if( event.button  == 0) { 
			// update the mouse variable
	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
	
	// create a Ray with origin at the mouse position
	//   and direction into the scene (camera direction)
	var vector = new THREE.Vector3( mouse.x, mouse.y, 1 );
	vector.unproject(camera );
	var ray = new THREE.Raycaster( camera.position, vector.sub( camera.position ).normalize() );
	// create an array containing all objects in the scene with which the ray intersects
	var intersects = ray.intersectObjects( targetList );

		// check to see if there is an intersection
		// clicking on room floors only allowed in topDown view
		if ( intersects.length > 0 && firstPerson == false)
		{
			// Switch to firstPerson settings
			controls = new THREE.FirstPersonControls(camera, renderer.domElement);
			controls.movementSpeed = 20;
			controls.lookSpeed = 0.05;
			controls.noFly = true;
			controls.lookVertical = false;
			// in firstPerson
			firstPerson = true;
			makeGui2();
			
			// default camera position upon clicking a room
			if ( intersects[ 0 ].object.name == "Living Room") {
				controls.lon = 270;
				camera.position.y = 17;
				camera.position.x = 90;
				camera.position.z = 60;
			} else if ( intersects[ 0 ].object.name == "Kitchen") {
				controls.lon = 180;
				camera.position.y = 17;
				camera.position.x = 30;
				camera.position.z = 20;
			} else if ( intersects[ 0 ].object.name == "Bathroom") {
				controls.lon = 90;
				camera.position.y = 17;
				camera.position.x = 40;
				camera.position.z = -42;
			} else if ( intersects[ 0 ].object.name == "Dining Room") {
				controls.lon = 220;
				camera.position.y = 17;
				camera.position.x = 20;
				camera.position.z = -45;
			} else if ( intersects[ 0 ].object.name == "Bedroom") {
				controls.lon = 180;
				camera.position.y = 17;
				camera.position.x = 95;
				camera.position.z = -80;
			} else {
				return;
			}
		}

	} else {
		return;
	}

}

function onDocumentMouseMove( event ) 
{
	// Lock first person controls when mouse is the upper right corner of the screen
	// so that the gui can be accessed
	if(mouse.x > .65 && mouse.y > .5) {
		controls.activeLook = false;
	} else {
		controls.activeLook = true;
	}

	// update sprite position
	sprite1.position.set( event.clientX, event.clientY-20, 0 );
	
	// update the mouse variable
	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
	
}

// Method to detect collision 
// Only allows for backwards movement if the camera collides with a 
// collidable object
function detectCollision() {
	var vector = new THREE.Vector3( 1, camera.position.y, 1 );
	var ray = new THREE.Raycaster( camera.position, vector.sub( camera.position ).normalize());
	var intersects = ray.intersectObjects( collisionList );
	// Stop movement if less than 5 units away from collidable object
	if ( intersects.length > 0 && intersects[0].distance < 5) {
		// Disable all movement except backwards
		controls.moveForward = false;
		controls.moveRight = false;
		controls.moveLeft = false;
	}

}




function animate()
{
	requestAnimationFrame(animate);
	render();
	// The following is to make the mirrors reflective
	bathMirCube.visible = false;
	bathMirCubeCamera.updateCubeMap( renderer, scene );
	bathMirCube.visible = true;
	bedMirCube.visible = false;
	bedMirCubeCamera.updateCubeMap( renderer, scene );
	bedMirCube.visible = true;
	renderer.render(scene,camera);
}		

function render() {
	detectCollision();

	// Code for highlighting modified from https://stemkoski.github.io/Three.js/Mouse-Tooltip.html
	var vector = new THREE.Vector3( mouse.x, mouse.y, 1 );
	vector.unproject(camera );
	var ray = new THREE.Raycaster( camera.position, vector.sub( camera.position ).normalize() );

	// make an array of objects that can be highlighted
	var intersects = ray.intersectObjects( targetList );
	
	// check to see if there is an intersection
	// only allow for highlight if not in firstPerson view	
	if ( intersects.length > 0 && firstPerson == false)
	{
		// if the closest object intersected is not the currently stored intersection object
		if ( intersects[ 0 ].object != INTERSECTED ) 
		{
		    // restore previous intersection object (if it exists) to its original color
			if ( INTERSECTED ) 
			{
				INTERSECTED.material.color.setHex( INTERSECTED.currentHex );
			}
			// store reference to closest object as current intersection object
			INTERSECTED = intersects[ 0 ].object;
			// store color of plane
			INTERSECTED.currentHex = INTERSECTED.material.color.getHex();
			// make color of highlighted floor red
			INTERSECTED.material.color.setHex( 0xff0000 );

		}
	} 
	else
	{
		// set plane back to original color if it's not being hovered over
		if ( INTERSECTED ) {
			INTERSECTED.material.color.setHex( INTERSECTED.currentHex );
		}
		INTERSECTED = null;
	}
	controls.update( clock.getDelta() );
	renderer.render( scene, camera );
}


function onWindowResize( e ) {
	containerWidth = container.clientWidth;
	containerHeight = container.clientHeight;
	renderer.setSize( containerWidth, containerHeight );
	camera.aspect = containerWidth / containerHeight;
	camera.updateProjectionMatrix();
}
		
		
			
			