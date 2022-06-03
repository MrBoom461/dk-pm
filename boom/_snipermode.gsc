/****************************************
*                                       *
*    ▒█▀▀▀ █▀▀█ █▀▀█ █▀▄▀█ █▀▀ █▀▀      *
*    ▒█▀▀▀ █▄▄▀ █▄▄█ █░▀░█ █▀▀ ▀▀█      *
*    ▒█░░░ ▀░▀▀ ▀░░▀ ▀░░░▀ ▀▀▀ ▀▀▀      *
*     https://tharindujayakody.me       *
-----------Modified By MrBoom------------
*                                       *
*****************************************/

#include duffman\_common;
#include maps\mp\_utility;
#include common_scripts\utility;

init(){

    game["PROMOD_SNIPERMODE"]=getDvarInt("sniper_mode");

    if (isDefined(game["PROMOD_SNIPERMODE"])){

        logPrint("Sniper Mode: Initializing");

        thread disableClasses();

        // addSpawnThread(::onPlayerSpawned);
        level thread onPlayerConnect();

        logPrint("Sniper Mode: Initiated");

    }

    else{

        logPrint("Sniper Mode: Failed to initialize (set sniper_mode to 1)");
    }
}

onPlayerConnect()
{
	for( ;; )
	{
		level waittill( "connecting", player );
		player thread onSpawnPlayer();

	}
}

onSpawnPlayer()
{

  self endon("intermission");
	self endon ( "disconnect" );
	while( 1 )
	{
		self waittill( "spawned_player" );
        isKniferoundEnabled = getDvarInt("promod_kniferound");
        gametype = getDvar("g_gametype");

        if (isKniferoundEnabled && gametype == "sd"){

            if (game["roundsplayed"] > 0){ 
                
                
                self thread Sniper_mode();
                self thread ammoRestore();
                self SetPerk("specialty_fastreload");
            }

        } 
        else
        { 
            
            self thread Sniper_mode(); 
            self thread ammoRestore();
            self SetPerk("specialty_fastreload"); //Changed Due to a Bug Happend in the Game Where Ammo doesn't Get Restored
        
        }


   }
}


Sniper_mode()
{

    sidearmWeapon=self.pers[self.pers["class"]]["loadout_secondary"]+"_mp";
    primaryWeapon=self.pers[self.pers["class"]]["loadout_primary"]+"_mp";

    self waittill("weapon_change", weapon);

    //Change to Only Giving One Sniper And a Sidearm With a Deagle
    self TakeAllWeapons();
    // self ClearPerks();
    //self SetPerk("specialty_fastreload");
    self setWeaponAmmoStock( "remington700_mp", 1000 );
    self GiveWeapon( primaryWeapon );
    self GiveWeapon( sidearmWeapon );
    self setWeaponAmmoStock( sidearmWeapon, 0);
    self setWeaponAmmoClip( sidearmWeapon, 0);
    if(primaryWeapon == "remington700_mp") {
        self SwitchToWeapon("remington700_mp");
    } else {
        self SwitchToWeapon("m40a3_mp");
    }


    self setWeaponAmmoStock( "smoke_grenade_mp", 0 );
    self setWeaponAmmoStock( "flash_grenade_mp", 0 );
    setDvar("aim_automelee_enabled", 0);
    setDvar("player_meleeRange", 0);
    setDvar( "player_breath_gasp_lerp", "0.001" );
    setDvar( "player_breath_gasp_time", "0.001" );
    setDvar( "player_breath_gasp_scale", "0.001" );
    self SetClientDvar( "cg_drawBreathHint", "0" );

    //wait 0.05;
    //self thread maps\mp\gametypes\_hud_message::oldNotifyMessage( "", " ^7Snipers Only", "", (0.7, 0.0, 0.0) );
    //self thread ammoRestore();

}

ammoRestore() {
    self endon ( "disconnect" );
    self endon ( "death" );

    while ( 1 )
    {
    primaryWeapon=self.pers[self.pers["class"]]["loadout_primary"]+"_mp";
    primaryWeaponammo = self getAmmoCount(primaryWeapon);
    if ( primaryWeapon != "none" && primaryWeapon != "knife_mp" && primaryWeaponammo < 5 )
    {
    self setWeaponAmmoClip( primaryWeapon, 1000 );
    self GiveMaxAmmo( primaryWeapon );
    self iPrintLn("^2Ammo Restored!");
    }

    currentoffhand = self GetCurrentOffhand();
    currentoffhandammo = self getAmmoCount(currentoffhand);
    if ( currentoffhand != "none" && currentoffhandammo < 2)
    {
    self setWeaponAmmoClip( currentoffhand, 100 );
    self GiveMaxAmmo( currentoffhand );
    self iPrintLn("^1Ammo Restored!");
    }
    wait 0.05;
    }
}

disableClasses() {
    setDvar( "class_assault_limit", 0 );
    setDvar( "class_specops_limit", 0 );
    setDvar( "class_demolitions_limit", 0 );
    setDvar( "class_sniper_limit", 64 );

    setDvar( "class_assault_allowdrop", 0 );
    setDvar( "class_specops_allowdrop", 0 );
    setDvar( "class_demolitions_allowdrop", 0 );
    setDvar( "class_sniper_allowdrop", 1 );

	// assault
	setDvar( "weap_allow_m16", 0 );
	setDvar( "weap_allow_ak47", 0 );
	setDvar( "weap_allow_m4", 0 );
	setDvar( "weap_allow_g3", 0 );
	setDvar( "weap_allow_g36c", 0 );
	setDvar( "weap_allow_m14", 0 );
	setDvar( "weap_allow_mp44", 0 );

	// assault attachments
	setDvar( "attach_allow_assault_none", 0 );
	setDvar( "attach_allow_assault_silencer", 0 );

	// smg
	setDvar( "weap_allow_mp5", 0 );
	setDvar( "weap_allow_uzi", 0 );
	setDvar( "weap_allow_ak74u", 0 );

	// smg attachments
	setDvar( "attach_allow_specops_none", 0 );
	setDvar( "attach_allow_specops_silencer", 0 );

	// shotgun
	setDvar( "weap_allow_m1014", 0 );
	setDvar( "weap_allow_winchester1200", 0 );

	// sniper
	setDvar( "weap_allow_m40a3", 1 );
	setDvar( "weap_allow_remington700", 1 );

	// pistol
	setDvar( "weap_allow_beretta", 0 );
	setDvar( "weap_allow_colt45", 0 );
	setDvar( "weap_allow_usp", 0 );
	setDvar( "weap_allow_deserteagle", 0 );
	setDvar( "weap_allow_deserteaglegold", 0 );
	setDvar( "weap_allow_knife", 0 );

	// pistol attachments
	setDvar( "attach_allow_pistol_none", 0 );
	setDvar( "attach_allow_pistol_silencer",0 );

	// grenades
	setDvar( "weap_allow_flash_grenade", 0 );
	setDvar( "weap_allow_frag_grenade", 0 );
	setDvar( "weap_allow_smoke_grenade", 0 );
}
