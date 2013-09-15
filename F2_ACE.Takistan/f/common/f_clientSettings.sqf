// F2_ACE - Client Settings
// ====================================================================================

// Disable Saving and Auto Saving
enableSaving [false, false];

// Disable BIS Conversations
player setVariable ["BIS_noCoreConversations", true];

// Disable Radio Messages
enableRadio false;

// Sets ACE Settings viewdistance
missionNamespace setVariable ["ace_viewdistance_limit",8000];	
ace_settings_enable_vd_change = true;

// Disables loss of gear for vehicle crew
ace_sys_eject_fnc_weaponCheckEnabled = {false}; 				

// Disables AI talk on players
ace_sys_aitalk_talkforplayer = false;							

// Disables unit markers on map
ACE_sys_tracking_markers_enabled_override = true;				
ACE_sys_tracking_MarkersEnabled = false;

// Disable automatic assignation of medical gear
player setVariable ["ace_sys_wounds_no_medical_gear", true];