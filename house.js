//============================================================================
// Name        : house.js
// Author      : Abby Carey & Tina Pi
// Assignment  : 3D House Explorer - Code Drop 1
// Description : This is a 3D house for you to explore! In Progress
//============================================================================



var RENDER_WIDTH = window.innerWidth, RENDER_HEIGHT = window.innerHeight;
var controls,renderer,scene,camera, container;
var ground,houseContainer;
var groundMaterial,texture_update;
var light;
var gui;
var mouse = { x: 0, y: 0 }, INTERSECTED;
var targetList = [];
var clock = new THREE.Clock();
var canvas1, context1, texture1;
var firstPerson = false; // toggle to see if in firstPerson view
var guiDestroyFlag = false;
var roofMaterial;
var plane, kitchenPlane, bedPlane, bathroomPlane, diningPlane, livingPlane;
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
	controls = new THREE.OrbitControls(camera, renderer.domElement);
	// add window resize controller
	window.addEventListener( 'resize', onWindowResize, false );
	var axes = new THREE.AxisHelper(100);
	axes.position.y = 5;
	scene.add( axes );
	
	// add directional light
	/*var directionalLight = new THREE.DirectionalLight(0xffffff,0.5);
    directionalLight.position.set(1, 1, 1).normalize();
    scene.add(directionalLight);

    var ambientLight = new THREE.AmbientLight(0Xffffff);
    ambientLight.position.set(0,1000,0);
    scene.add(ambientLight);*/

    // add a light above the scene to light up the whole scene
	/*var hLight = new THREE.HemisphereLight(0x666666,0x555555,1.0);
	scene.add(hLight);

	scene.add( new THREE.AmbientLight( 0x505050 ) );

	var light = new THREE.SpotLight( 0xffffff, 1.5 );
	light.position.set( 300, 500, 2000 );
	light.castShadow = true;

	light.shadowCameraNear = 200;
	light.shadowCameraFar = camera.far;
	light.shadowCameraFov = 50;

	light.shadowBias = -0.00022;
	light.shadowDarkness = 0.5;

	light.shadowMapWidth = 2048;
	light.shadowMapHeight = 2048;

	scene.add( light );*/
	var ambientLight = new THREE.AmbientLight( 0x222222 );
	light = new THREE.DirectionalLight( 0xffffff, 1.0 );
	light.position.set( 200, 400, 500 );
	
	var light2 = new THREE.DirectionalLight( 0xffffff, 1.0 );
	light2.position.set( -400, 200, -300 );

	scene.add(ambientLight);
	scene.add(light);
	scene.add(light2);

	houseContainer = new THREE.Group();

    // loader to load in house model
    var loader = new THREE.OBJMTLLoader();
	loader.load('model/house1.obj','model/house1.mtl',function(object){
	    object.position.x = -10;
		object.castShadow = true;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		houseContainer.add(object);
		scene.add(houseContainer);
	});

	// Base ground plane
	var planeGeometry = new THREE.PlaneBufferGeometry( 300, 300, 300 );
	var texture = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
 	texture.wrapS = texture.wrapT = THREE.RepeatWrapping;
	texture.repeat.set(20,20);
	texture.needsUpdate = true;
	var planeMaterial = new THREE.MeshLambertMaterial( {color: 0xffffff, side: THREE.DoubleSide} );
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
	livingPts.push( new THREE.Vector2 ( 62, 0 ) );
	livingPts.push( new THREE.Vector2 ( 62, 96 ) );
	livingPts.push( new THREE.Vector2 ( 0, 96 ) );
	livingPts.push( new THREE.Vector2 ( 0, 0 ) );

	
	
	texture.repeat.set( 1 / 10, 1 / 10 );
	texture.offset.set( 1, 1 );
	var livingShape = new THREE.Shape( livingPts );
	var livingGeometry = new THREE.ShapeGeometry( livingShape );
	var livingMaterial = new THREE.MeshLambertMaterial( {map: texture, side: 
	THREE.DoubleSide} );
	livingPlane = new THREE.Mesh( livingGeometry, livingMaterial );
	livingPlane.position.set( 47,.4,-66.5 );
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
	var bathroomMaterial = new THREE.MeshLambertMaterial( {color: 0xff0000, side: 
	THREE.DoubleSide, transparent: false} );
	bathroomPlane = new THREE.Mesh( bathroomGeometry, bathroomMaterial );
	bathroomPlane.position.set( 15.5,.4,-38 );
	bathroomPlane.rotation.x = 1.57;
	bathroomPlane.name = "Bathroom";
	scene.add( bathroomPlane );	
	targetList.push(bathroomPlane);
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Kitchen                ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// kitchen room floor plane
	var kitchenPts = [];
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 35, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 60.5, 10 ) );
	kitchenPts.push( new THREE.Vector2 ( 60.5, 78 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 78 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );

	var kitchenShape = new THREE.Shape( kitchenPts );
	var kitchenGeometry = new THREE.ShapeGeometry( kitchenShape );
	var kitchenMaterial = new THREE.MeshLambertMaterial( {color: 0x000000, side: 
	THREE.DoubleSide, transparent: false} );
	kitchenPlane = new THREE.Mesh( kitchenGeometry, kitchenMaterial );
	kitchenPlane.position.set( -45,.4,-48.5 );
	kitchenPlane.rotation.x = 1.57;
	kitchenPlane.name = "Kitchen";
	scene.add( kitchenPlane );	
	targetList.push(kitchenPlane);

	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Dining room                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// dining room floor plane
	var diningPts = [];
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );
	diningPts.push( new THREE.Vector2 ( 61, 0 ) );
	diningPts.push( new THREE.Vector2 ( 61, 67.5 ) );
	diningPts.push( new THREE.Vector2 ( 35, 85 ) );
	diningPts.push( new THREE.Vector2 ( 0, 85 ) );
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );

	var diningShape = new THREE.Shape( diningPts );
	var diningGeometry = new THREE.ShapeGeometry( diningShape );
	var diningMaterial = new THREE.MeshLambertMaterial( {color: 0x0000FF, side: 
	THREE.DoubleSide, transparent: false} );
	diningPlane = new THREE.Mesh( diningGeometry, diningMaterial );
	diningPlane.position.set( -45,.4,-133 );
	diningPlane.rotation.x = 1.57;
	diningPlane.name = "Dining Room";
	scene.add( diningPlane );
	targetList.push(diningPlane);
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Bedroom                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// bed room floor plane
	var bedPts = [];
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );
	bedPts.push( new THREE.Vector2 ( 91, 0 ) );
	bedPts.push( new THREE.Vector2 ( 91, 67 ) );
	bedPts.push( new THREE.Vector2 ( 0, 67 ) );
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );

	var bedShape = new THREE.Shape( bedPts );
	var bedGeometry = new THREE.ShapeGeometry( bedShape );
	var bedMaterial = new THREE.MeshLambertMaterial( {color: 0x00FF00, side: 
	THREE.DoubleSide, transparent: false} );
	bedPlane = new THREE.Mesh( bedGeometry, bedMaterial );
	bedPlane.position.set( 16,.4,-133.5 );
	bedPlane.rotation.x = 1.57;
	bedPlane.name = "Bedroom";
	scene.add( bedPlane );
	targetList.push(bedPlane);
	
	// Make the topDown GUI
	makeGui1();
	
	
	


	

	
	
	
	
	// when the mouse moves, call the given function
	document.addEventListener( 'mousemove', onDocumentMouseMove, false );
	document.addEventListener( 'mousedown', onDocumentMouseDown, false );
	

		/////// draw text on canvas /////////

	// create a canvas element
	canvas1 = document.createElement('canvas');
	context1 = canvas1.getContext('2d');
	context1.font = "Bold 20px Arial";
	context1.fillStyle = "rgba(0,0,0,0.95)";
    context1.fillText('Hello, world!', 0, 20);
    
	// canvas contents will be used for a texture
	texture1 = new THREE.Texture(canvas1) 
	texture1.needsUpdate = true;
	
	
	var spriteMaterial = new THREE.SpriteMaterial( { map: texture1, useScreenCoordinates: true} );
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
			this.changeFloor = "Tile";	// change the texture of the floor
		};
		
		// Create the GUI frame
		var  guiConfig = new guiConfigData(  );
		gui = new dat.GUI( );
		var folder1 = gui.addFolder("General");
		var folder2 = gui.addFolder("Room Floors");
		gui.open();
		folder1.open();
		// Drop down menu to pick the view of the camera
		var view = folder1.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camere View")
				.onChange( function() {
			if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
				roofMaterial.opacity = 0;
				controls = new THREE.OrbitControls(camera, renderer.domElement);
				// topdown position
				camera.position.y = 240;
				camera.position.x = 20;
				camera.position.z = -20;
				firstPerson = false;
				console.log("firstperson = " + firstPerson);
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
				console.log("firstperson = " + firstPerson);
				makeGui2();
			}
		});	
			
		folder2.add( guiConfig, 'changeFloor', ['Tile','Light brown wood','Stone','Dark brown wood','Light brown wood']).name("Living Room")
			.onChange( function() {
				var tex; // texture to be loaded
				if (guiConfig.changeFloor == 'Tile')
				{
					tex = THREE.ImageUtils.loadTexture( "texture/floor.jpg" );
				}
				if (guiConfig.changeFloor == 'Brown wood')
				{
					tex = THREE.ImageUtils.loadTexture( "texture/floor1.jpg" );
				}
				if (guiConfig.changeFloor == 'Stone')
				{
					tex = THREE.ImageUtils.loadTexture( "texture/floor2.jpg" );
				}
				if (guiConfig.changeFloor == 'Dark brown wood')
				{
					tex = THREE.ImageUtils.loadTexture( "texture/floor3.jpg" );
				}
				if (guiConfig.changeFloor == 'Light brown wood')
				{
					tex = THREE.ImageUtils.loadTexture( "texture/floor4.jpg" );
				}
				
				// Repeat texture and wrap it
				tex.wrapT = tex.wrapS = THREE.RepeatWrapping;
				tex.repeat.set( 1 / 10, 1 / 10 );
				tex.offset.set( 1, 1 );
				livingPlane.material.map = tex;
		});

	// Slide bar used for changing light intensity - in lighting folder
	var intens = folder1.add( light, 'intensity' ).min(0).max(1).step(.1).listen();
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
			this.light = 1;
			this.cameraView = "First-person"; // defaults to "top-down" view
		};

		// Create the GUI frame
		var  guiConfig = new guiConfigData(  );
		gui = new dat.GUI( );
		gui.open();
		
		var view = gui.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camere View 2")
				.onChange( function() {
			if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
				roofMaterial.opacity = 0;
				controls = new THREE.OrbitControls(camera, renderer.domElement);
				// topdown position
				camera.position.y = 240;
				camera.position.x = 20;
				camera.position.z = -20;
				firstPerson = false;
				console.log("firstperson = " + firstPerson);
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
				console.log("firstperson = " + firstPerson);
			}
		});
		var intens = gui.add( light, 'intensity' ).min(0).max(1).step(.1).listen();
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
			console.log("Hit @ " + toString( intersects[0].point ) );
			// Switch to firstPerson settings
			controls = new THREE.FirstPersonControls(camera, renderer.domElement);
			controls.movementSpeed = 20;
			controls.lookSpeed = 0.05;
			controls.noFly = true;
			controls.lookVertical = false;
			// in firstPerson
			firstPerson = true;
			console.log("firstperson = " + firstPerson);
			makeGui2();
			
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


// location of click
function toString(v) { return "[ " + v.x + ", " + v.y + ", " + v.z + " ]"; }


function onDocumentMouseMove( event ) 
{
	// the following line would stop any other event handler from firing
	// (such as the mouse's TrackballControls)
	//event.preventDefault();

	// update sprite position
	sprite1.position.set( event.clientX, event.clientY - 20, 0 );
	
	// update the mouse variable
	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
	
}


function animate()
{
	requestAnimationFrame(animate);
	render();
	renderer.render(scene,camera);
}		

function render() {
		// create a Ray with origin at the mouse position
	//   and direction into the scene (camera direction)
	var vector = new THREE.Vector3( mouse.x, mouse.y, 1 );
	vector.unproject(camera );
	var ray = new THREE.Raycaster( camera.position, vector.sub( camera.position ).normalize() );

	// create an array containing all objects in the scene with which the ray intersects
	var intersects = ray.intersectObjects( targetList );

	// INTERSECTED = the object in the scene currently closest to the camera 
	//		and intersected by the Ray projected from the mouse position 	
	
	// check to see if there is an intersection
	// only allow for highlight if not in firstPerson view	
	if ( intersects.length > 0 && firstPerson == false)
	{
		// if the closest object intersected is not the currently stored intersection object
		if ( intersects[ 0 ].object != INTERSECTED ) 
		{
		    // restore previous intersection object (if it exists) to its original color
			if ( INTERSECTED ) 
				INTERSECTED.material.color.setHex( INTERSECTED.currentHex );
			// store reference to closest object as current intersection object
			INTERSECTED = intersects[ 0 ].object;
			// store color of closest object (for later restoration)
			INTERSECTED.currentHex = INTERSECTED.material.color.getHex();
			// set a new color for closest object
			INTERSECTED.material.color.setHex( 0xffff00 );
			
			/*
			// update text, if it has a "name" field.
			if ( intersects[ 0 ].object.name )
			{
			    context1.clearRect(0,0,50,50);
				var message = intersects[ 0 ].object.name;
				var metrics = context1.measureText(message);
				var width = metrics.width;
				context1.fillStyle = "rgba(0,0,0,0.95)"; // black border
				context1.fillRect( 0,0, width+8,20+8);
				context1.fillStyle = "rgba(255,255,255,0.95)"; // white filler
				context1.fillRect( 2,2, width+4,20+4 );
				context1.fillStyle = "rgba(0,0,0,1)"; // text color
				context1.fillText( message, 4,20 );
				texture1.needsUpdate = true;
			}
			else
			{
				context1.clearRect(0,0,300,300);
				texture1.needsUpdate = true;
			}
			*/
		}
		
		
	} 
	else // there are no intersections
	{
		// restore previous intersection object (if it exists) to its original color
		if ( INTERSECTED ) 
			INTERSECTED.material.color.setHex( INTERSECTED.currentHex );
		// remove previous intersection object reference
		//     by setting current intersection object to "nothing"
		INTERSECTED = null;
		context1.clearRect(0,0,300,300);
		texture1.needsUpdate = true;
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
		
		
			
			