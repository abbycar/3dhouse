var width = window.innerWidth;
var height = window.innerHeight;
var renderer,scene,camera;

init();
animate();


function init()
{
	var div = document.getElementById("container");

	renderer = new THREE.WebGLRenderer({ antialias:true });
	renderer.setSize(window.innerWidth,window.innerHeight);

	div.appendChild(renderer.domElement);
	scene = new THREE.Scene();





    // loader to load in house model
    var loader = new THREE.OBJMTLLoader();
	loader.load('model/kitchen_tri.obj','model/kitchen_tri.mtl',function(object){
		object.position.x = -30;
		object.position.y = 0;
		object.position.z = 0;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		scene.add(object);
	});
	
		// add directional light
	var directionalLight = new THREE.DirectionalLight(0xffffff,0.5);
    directionalLight.position.set(1, 1, 1).normalize();
    scene.add(directionalLight);

    // add a light above the scene to light up the whole scene
	var hLight = new THREE.HemisphereLight(0x999999,0x555555,0.8);
	scene.add(hLight);
	// add top-down camera to the scene
	camera = new THREE.PerspectiveCamera(40,width/height,1,1000);
	scene.add(camera);
	camera.position.y = 100;
	camera.position.x = 0;
	camera.position.z = 0;

	
    // controls to rotate around the object right now
	controls = new THREE.OrbitControls( camera );
	controls.addEventListener('change',updateControls);

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
			controls = new THREE.OrbitControls( camera );
			camera.position.y = 100;
			camera.position.x = 0;
			camera.position.z = 0;
		} else if ( guiConfig.cameraView == 'First-person') { // camera position for first person point of view
			//controls = new THREE.PointerLockControls(camera);
			camera.position.y = 50;
			camera.position.x = 0;
			camera.position.z = 0;
			camera.lookAt(-30,20,10);
		}
	});	
	
	// Slide bar used for changing light intensity - in lighting folder
	gui.add(directionalLight, 'intensity', 0, 1);
	// Show the control instructions in a pop up if clicked
	gui.add( guiConfig, 'showControls').name("Show Controls").onChange( function() {
		alert("Left Click + Move mouse = Rotate" + "\n" + "Right Click + Move mouse = Pan" + 
		"\n" + "Scroll up = Zoom in" + "\n" + "Scroll down = Zoom out");
	} ); 	
		// axes
	var axes = new THREE.AxisHelper(100);
	scene.add( axes );
}


	
function updateControls(){
	controls.update();
}

function animate()
{
	requestAnimationFrame(animate);
	renderer.render(scene,camera);
	updateControls();
}		

function onWindowResize( e ) {
	containerWidth = container.clientWidth;
	containerHeight = container.clientHeight;
	renderer.setSize( containerWidth, containerHeight );
	camera.aspect = containerWidth / containerHeight;
	camera.updateProjectionMatrix();
}
		
		


		
		
		
		
			
			