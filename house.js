//============================================================================
// Name        : house.js
// Author      : Abby Carey & Tina Pi
// Assignment  : 3D House Explorer - Code Drop 1
// Description : This is a 3D house for you to explore! In Progress
//============================================================================



var RENDER_WIDTH = window.innerWidth, RENDER_HEIGHT = window.innerHeight;
var controls,renderer,scene,camera;
var ground,houseContainer;
var groundMaterial;
var projector, mouse = { x: 0, y: 0 }, INTERSECTED;

var clock = new THREE.Clock();
init();
animate();


function init()
{
	var div = document.getElementById("container");

	renderer = new THREE.WebGLRenderer({ antialias:true });
	renderer.setSize(RENDER_WIDTH,RENDER_HEIGHT);
	renderer.domElement.style.backgroundColor = '#000000';
	document.body.appendChild( renderer.domElement );

	div.appendChild(renderer.domElement);
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
	var light = new THREE.DirectionalLight( 0xffffff, 1.0 );
	light.position.set( 200, 400, 500 );
	
	var light2 = new THREE.DirectionalLight( 0xffffff, 1.0 );
	light2.position.set( -400, 200, -300 );

	scene.add(ambientLight);
	scene.add(light);
	scene.add(light2);

	houseContainer = new THREE.Group();

    // loader to load in house model
    var loader = new THREE.OBJMTLLoader();
	loader.load('model/house.obj','model/house.mtl',function(object){
	    object.position.x = -10;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		houseContainer.add(object);
	//	houseContainer.scale.set(10,10,10);
		scene.add(houseContainer);
	});

	// Base ground plane
	var planeGeometry = new THREE.PlaneBufferGeometry( 300, 300, 300 );
	var planeMaterial = new THREE.MeshLambertMaterial( {color: 0x545454, side: THREE.DoubleSide} );
	var plane = new THREE.Mesh( planeGeometry, planeMaterial );
	plane.position.set(50, 0, -30);
	plane.receiveShadow = true;
	plane.castShadow = false;
	plane.rotation.x = 1.57;
	scene.add( plane ); 
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Living Room             ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// Living room floor plane
	var livingPts = [];
	livingPts.push( new THREE.Vector2 ( 0, 0 ) );
	livingPts.push( new THREE.Vector2 ( 54.8, 0 ) );
	livingPts.push( new THREE.Vector2 ( 54.8, 87 ) );
	livingPts.push( new THREE.Vector2 ( 0, 87 ) );
	livingPts.push( new THREE.Vector2 ( 0, 0 ) );

	var livingShape = new THREE.Shape( livingPts );
	var livingGeometry = new THREE.ShapeGeometry( livingShape );
	var livingMaterial = new THREE.MeshLambertMaterial( {color: 0xffffff, side: 
	THREE.DoubleSide, transparent: false} );
	var livingHighlight = new THREE.Mesh( livingGeometry, livingMaterial );
	livingHighlight.position.set( 43.8,.4,-58 );
	livingHighlight.rotation.x = 1.57;
	livingHighlight.name = "Living Room";
	scene.add( livingHighlight );	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Bathroom                ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// bathroom room floor plane
	var bathroomPts = [];
	bathroomPts.push( new THREE.Vector2 ( 0, 0 ) );
	bathroomPts.push( new THREE.Vector2 ( 28.5, 0 ) );
	bathroomPts.push( new THREE.Vector2 ( 28.5, 44 ) );
	bathroomPts.push( new THREE.Vector2 ( 0, 44 ) );
	bathroomPts.push( new THREE.Vector2 ( 0, 0 ) );

	var bathroomShape = new THREE.Shape( bathroomPts );
	var bathroomGeometry = new THREE.ShapeGeometry( bathroomShape );
	var bathroomMaterial = new THREE.MeshLambertMaterial( {color: 0xff0000, side: 
	THREE.DoubleSide, transparent: false} );
	var bathroomHighlight = new THREE.Mesh( bathroomGeometry, bathroomMaterial );
	bathroomHighlight.position.set( 15.5,.4,-38 );
	bathroomHighlight.rotation.x = 1.57;
	bathroomHighlight.name = "Bathroom";
	scene.add( bathroomHighlight );	
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Kitchen                ///////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// kitchen room floor plane
	var kitchenPts = [];
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 44, 0 ) );
	kitchenPts.push( new THREE.Vector2 ( 44, 57 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 57 ) );
	kitchenPts.push( new THREE.Vector2 ( 0, 0 ) );

	var kitchenShape = new THREE.Shape( kitchenPts );
	var kitchenGeometry = new THREE.ShapeGeometry( kitchenShape );
	var kitchenMaterial = new THREE.MeshLambertMaterial( {color: 0x000000, side: 
	THREE.DoubleSide, transparent: false} );
	var kitchenHighlight = new THREE.Mesh( kitchenGeometry, kitchenMaterial );
	kitchenHighlight.position.set( -29,.4,-27.5 );
	kitchenHighlight.rotation.x = 1.57;
	kitchenHighlight.name = "Kitchen";
	scene.add( kitchenHighlight );	

	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Dining room                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// dining room floor plane
	var diningPts = [];
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );
	diningPts.push( new THREE.Vector2 ( 45, 0 ) );
	diningPts.push( new THREE.Vector2 ( 45, 73 ) );
	diningPts.push( new THREE.Vector2 ( 0, 73 ) );
	diningPts.push( new THREE.Vector2 ( 0, 0 ) );

	var diningShape = new THREE.Shape( diningPts );
	var diningGeometry = new THREE.ShapeGeometry( diningShape );
	var diningMaterial = new THREE.MeshLambertMaterial( {color: 0x0000FF, side: 
	THREE.DoubleSide, transparent: false} );
	var diningHighlight = new THREE.Mesh( diningGeometry, diningMaterial );
	diningHighlight.position.set( -29,.4,-100 );
	diningHighlight.rotation.x = 1.57;
	diningHighlight.name = "Dining Room";
	scene.add( diningHighlight );
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       Bedroom                ////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// bed room floor plane
	var bedPts = [];
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );
	bedPts.push( new THREE.Vector2 ( 83, 0 ) );
	bedPts.push( new THREE.Vector2 ( 83, 44 ) );
	bedPts.push( new THREE.Vector2 ( 0, 44 ) );
	bedPts.push( new THREE.Vector2 ( 0, 0 ) );

	var bedShape = new THREE.Shape( bedPts );
	var bedGeometry = new THREE.ShapeGeometry( bedShape );
	var bedMaterial = new THREE.MeshLambertMaterial( {color: 0x00FF00, side: 
	THREE.DoubleSide, transparent: false} );
	var bedHighlight = new THREE.Mesh( bedGeometry, bedMaterial );
	bedHighlight.position.set( 16,.4,-100.5 );
	bedHighlight.rotation.x = 1.57;
	bedHighlight.name = "Bedroom";
	scene.add( bedHighlight );
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////       GUI             ///////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////
	// Hold default values for the GUI
	var guiConfigData = function() {
		this.showControls = function() {
		};
		this.intensity = 1; // light intensity
		this.cameraView = "Top-down"; // defaults to "top-down" view
	};
	
	// Create the GUI frame
	var  guiConfig = new guiConfigData(  );
	var gui = new dat.GUI( );
	gui.open();
	// Drop down menu to pick the view of the camera
	gui.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camere View")
			.onChange( function() {
		if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
			controls = new THREE.OrbitControls(camera, renderer.domElement);
			// topdown position
			camera.position.y = 240;
			camera.position.x = 20;
			camera.position.z = -20;
		} else if ( guiConfig.cameraView == 'First-person') { 
			// camera position for first person point of view
			controls = new THREE.FirstPersonControls(camera, renderer.domElement);
			controls.movementSpeed = 20;
			controls.lookSpeed = 0.05;
			controls.noFly = true;
			controls.lookVertical = false;
			controls.lon = 270;
			camera.position.y = 17;
			camera.position.x = 90;
			camera.position.z = 60;
			//camera.lookAt(90, 15, 0)

		}
	});	
	
	// Slide bar used for changing light intensity - in lighting folder
	var intens = gui.add( light, 'intensity' ).min(0).max(1).step(.1).listen();
	
	// Show the control instructions in a pop up if clicked
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


function animate()
{
	requestAnimationFrame(animate);
	render();
	renderer.render(scene,camera);
}		

function render() {
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
		
		
			
			