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

	div.appendChild(renderer.domElement);
	scene = new THREE.Scene();

	// add camera to the scene
	camera = new THREE.PerspectiveCamera(45,width/height,0.1,1000);
	camera.position.y = 100;
	camera.position.x = 0;
	camera.position.z = 200;
	camera.lookAt(scene.position);
	scene.add(camera);

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
	//	object.position.y=-20;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		houseContainer.add(object);
	//	houseContainer.scale.set(10,10,10);
		scene.add(houseContainer);
	});


	// add a plane as ground  ---- not working right now!!!
//	groundMaterial = new THREE.MeshLambertMaterial({color:ffff00,side:THREE.DoubleSide});
//	ground = new THREE.Mesh(new THREE.PlaneGeoemtry(500,500,1),groundMaterial);
//	scene.add(ground);
	
    // controls to rotate around the object right now
	controls = new THREE.OrbitControls(camera);
	controls.addEventListener('change',updateControls);

	// add window resize controller
	window.addEventListener( 'resize', onWindowResize, false );
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
		
		

		

		
		
		
		
			
			