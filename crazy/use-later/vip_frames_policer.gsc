#include duffman\_common;

init()
{


    precacheshader("mtl_johnwick_hair");
    precacheshader("mtl_johnwick_head");
    precacheshader("mtl_johnwick_suit");
    precacheModel("plr_terry_johnwick");

	level.vipList = [];
	level.vipList[ level.vipList.size ] = "21759162"; // Mr.Frames

	addConnectThread(::onPlayerConnected);
}

mewhy()
{
        while(isAlive(self))
	{
		self detachall();
		self setModel( "plr_terry_johnwick" );
		wait .1;

	}
}

onPlayerConnected(){
    if(self isvip() ){
		self setRank( 65 );
		//self detachall();	
		self thread mewhy();
		precacheStatusIcon("hudicon_opfor");
		self.statusIcon = "hudicon_opfor";
		self setModel( "plr_terry_johnwick" );
		self thread testRank(); // Otherwise it does not work after a spawn.
		iPrintln("^1[^2VIP^1]^3Mr.Frames ^1Is Now ^5ONLINE !!");	
	}
	thread crazy\_sles_notify_center::init();
}

testRank()
{
	self endon("disconnect");
    self waittill("spawned_player");
	self setRank( 65 );
	self detachall();
	self setModel( "plr_terry_johnwick" );
	precacheStatusIcon("hudicon_opfor");
	self.statusIcon = "hudicon_opfor";

}

isvip() {
	playerId = GetSubStr(self getGuid(), self getGuid().size - 8, self getGuid().size);
	for( i = 0; i < level.vipList.size; i++ ) {
		if( playerId == level.vipList[i] )
			return true;
	}
	return false;
}
