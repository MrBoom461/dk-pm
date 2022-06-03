#include duffman\_common;

init()
{
	//precacheshader("mtl_police_arms");
	//precacheshader("mtl_police_patches");
	//precacheshader("mtl_police_glasseshandles");
	//precacheshader("mtl_police_watch");
	//precacheshader("mtl_police_pants");
	//precacheshader("mtl_police_gear");
	//precacheshader("mtl_police_head");
	//precacheshader("mtl_police_glasses");
	//precacheshader("mtl_police_ears");
	//precacheshader("mtl_police_earpiece");
	//precacheshader("mtl_police_torso");
	//precacheModel("plr_terry_police");
	
	//precacheshader("mtl_ironman");
	//precacheModel("plr_terry_ironman");

	//precacheModel("playermodel_fox_fortnite_ramirez");
	//precacheModel("plr_aloneboy");

	//BLACK PANTHER
	//precacheshader("mtl_blackpanther");
	//precacheModel("plr_terry_blackpanther");

	//sickle
	//precacheModel("sickle_vm");
	//recacheshader("mtl_sickle");
	
	//hitman
	//precacheModel("plr_hitman");
	//precacheshader("mtl_character_hitman");
	//precacheshader("mtl_plr_hitman_base");
	//precacheshader("mtl_plr_hitman_eyes");
	//precacheshader("mtl_plr_hitman_face");

	level.ownerList = [];
	level.ownerList[ level.ownerList.size ] = "33200000"; // Mr.Frames

	addConnectThread(::onPlayerConnected);
}

//mewhy()
//{
//        while(isAlive(self))
//	{
//		self detachall();
//		self setModel( "plr_terry_blackpanther" );
//		wait .1;
//
//	}
//}

onPlayerConnected(){
    if(self isowner() ){
		self setRank( 69 );
		//self detachall();	
		//self thread mewhy();
		precacheStatusIcon("hudicon_opfor");
		self.statusIcon = "hudicon_opfor";
		//self setModel( "plr_terry_blackpanther" );
		self thread testRank(); // Otherwise it does not work after a spawn.
		//iPrintln("^1[^2VIP^1]^3Mr.Frames ^1Is Now ^5ONLINE !!");	
	}
	//thread crazy\_sles_notify_center::init();
}

testRank()
{
	self endon("disconnect");
    self waittill("spawned_player");
	self setRank( 69 );
	//self detachall();
	//self setModel( "plr_terry_blackpanther" );
	precacheStatusIcon("hudicon_opfor");
	self.statusIcon = "hudicon_opfor";

}

isowner() {
	playerId = GetSubStr(self getGuid(), self getGuid().size - 8, self getGuid().size);
	for( i = 0; i < level.ownerList.size; i++ ) {
		if( playerId == level.ownerList[i] )
			return true;
	}
	return false;
}

