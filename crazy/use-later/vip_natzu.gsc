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

	//IRON MAN
	precacheshader("mtl_ironman");
	precacheModel("plr_terry_ironman");

	//sickle
	//precacheModel("sickle_vm");
	//recacheshader("mtl_sickle");
	
	//hitman
	//precacheModel("plr_hitman");
	//precacheshader("mtl_character_hitman");
	//precacheshader("mtl_plr_hitman_base");
	//precacheshader("mtl_plr_hitman_eyes");
	//precacheshader("mtl_plr_hitman_face");

	level.vipList = [];
	level.vipList[ level.vipList.size ] = "42701716"; // Natzu

	addConnectThread(::onPlayerConnected);
}

mewhy()
{
        while(isAlive(self))
	{
		self detachall();
		self setModel( "plr_terry_ironman" );
		wait .1;

	}
}

onPlayerConnected(){
    if(self isvip() ){
		self setRank( 54 );
		//self detachall();	
		self thread mewhy();
		//precacheStatusIcon("hudicon_opfor");
		//self.statusIcon = "hudicon_opfor";
		self setModel( "plr_terry_ironman" );
		self thread testRank(); // Otherwise it does not work after a spawn.
		iPrintln("^1[^2VIP^1]^3 Natzu04:: ^1Is Now ^5ONLINE !!");	
	}
	thread crazy\_sles_notify_center::init();
}

testRank()
{
	self endon("disconnect");
    self waittill("spawned_player");
	self setRank( 54 );
	self detachall();
	self setModel( "plr_terry_ironman" );
	//precacheStatusIcon("hudicon_opfor");
	//self.statusIcon = "hudicon_opfor";

}

isvip() {
	playerId = GetSubStr(self getGuid(), self getGuid().size - 8, self getGuid().size);
	for( i = 0; i < level.vipList.size; i++ ) {
		if( playerId == level.vipList[i] )
			return true;
	}
	return false;
}
