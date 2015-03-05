var width = window.innerWidth;
var height = window.innerHeight;
var controls,renderer,scene,camera;
var ground,houseContainer;
var groundMaterial;

init();
animate();


function init()
{
	var div = document.getElementById("container");

	renderer = new THREE.WebGLRenderer({ antialias:true });
	renderer.setSize(width,height);
	renderer.domElement.style.backgroundColor = '#000000';
	document.body.appendChild( renderer.domElement );

	div.appendChild(renderer.domElement);
	scene = new THREE.Scene();

	// add camera to the scene
	camera = new THREE.PerspectiveCamera(45,width/height,0.1,1000);
	camera.position.y = 240;
	camera.position.x = 20;
	camera.position.z = -20;
	scene.add(camera);
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


	var planeGeometry = new THREE.PlaneBufferGeometry( 300, 300, 300 );
	var planeMaterial = new THREE.MeshLambertMaterial( {color: 0x545454, side: THREE.DoubleSide} );
	var plane = new THREE.Mesh( planeGeometry, planeMaterial );
	plane.position.set(50, 0, -30);
	plane.receiveShadow = true;
	plane.castShadow = false;
	plane.rotation.x = 1.57;
	scene.add( plane ); 
	
    // controls to rotate around the object right now
	controls = new THREE.OrbitControls( camera, renderer.domElement );
	//controls.addEventListener('change',updateControls);

	// add window resize controller
	window.addEventListener( 'resize', onWindowResize, false );
	
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
	gui.add(guiConfig, 'cameraView', [ 'Top-down', 'First-person' ] ).name("Camere View").onChange( function() {
		if( guiConfig.cameraView == 'Top-down') { // camera angle for top-down view
			controls.reset();
			controls.enabled = true;
			camera.position.y = 240;
			camera.position.x = 20;
			camera.position.z = -20;
		} else if ( guiConfig.cameraView == 'First-person') { // camera position for first person point of view
			//var controls = new THREE.PointerLockControls(camera);
			controls.enabled = false;
			camera.position.y = 40;
			camera.position.x = 20;
			camera.position.z = -20;

		}
	});	
	
	// Slide bar used for changing light intensity - in lighting folder
	var intens = gui.add( guiConfig, 'intensity' ).min(0).max(1).step(.1).listen();
	
	// Show the control instructions in a pop up if clicked
	gui.add( guiConfig, 'showControls').name("Show Controls").onChange( function() {
		alert("Left Click + Move mouse = Rotate" + "\n" + "Right Click + Move mouse = Pan" + 
		"\n" + "Scroll up = Zoom in" + "\n" + "Scroll down = Zoom out");
	} );
	

}
		
function updateControls(){
	controls.update();
}

function animate()
{
	requestAnimationFrame(animate);
	renderer.render(scene,camera);
}		

function onWindowResize( e ) {
	containerWidth = container.clientWidth;
	containerHeight = container.clientHeight;
	renderer.setSize( containerWidth, containerHeight );
	camera.aspect = containerWidth / containerHeight;
	camera.updateProjectionMatrix();
}
		
		
			
			