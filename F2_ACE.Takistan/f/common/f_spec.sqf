// F2_ACE - Attaches the camera unit to the camera, allows camera to hear ACRE enabled players
// ====================================================================================
//Run the camera script
[(_this select 1)] exec "camera.sqs";

//Wait until camera has been initialized
waituntil{ sleep 1; !isNil "BIS_DEBUG_CAM";};

//Prevent the camera from clipping
camera1 enablesimulation false;

//Attach player to camera while camera is active, attachto doesn't work
while {!isNil "BIS_DEBUG_CAM";} do
{
	camera1 setpos [(getpos BIS_DEBUG_CAM select 0), (getpos BIS_DEBUG_CAM select 1), (getpos BIS_DEBUG_CAM select 2) - 0.5];
	sleep .1;
};

//Allow the camera to clip
camera1 enablesimulation true;

//Detach camera and teleport to corner of map to prevent interference
camera1 setpos [0,0,0];
