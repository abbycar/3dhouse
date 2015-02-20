var width = window.innerWidth;
var height = window.innerHeight;
var controls,renderer,scene,camera;

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
	camera.position.Y = 100;
	camera.position.x = 50;
	camera.position.z = 30;
	camera.lookAt(scene.position);
	scene.add(camera);

	// add directional light
	var directionalLight = new THREE.DirectionalLight(0xffffff,0.5);
    directionalLight.position.set(1, 1, 1).normalize();
    scene.add(directionalLight);

    // add a light above the scene to light up the whole scene
	var hLight = new THREE.HemisphereLight(0x999999,0x555555,0.8);
	scene.add(hLight);

    // loader to load in house model
    var loader = new THREE.OBJMTLLoader();
	loader.load('model/kitchen_tri.obj','model/kitchen_tri.mtl',function(object){
		object.position.y=-20;
		object.traverse(function(node){
				if (node.material){
					node.material.side = THREE.DoubleSide;					}
		});
		scene.add(object);
	});
	
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
		
		

		

		
		
		
		
			
			