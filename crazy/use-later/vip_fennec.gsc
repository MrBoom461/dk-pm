

#include duffman\_common;

init()
{
	level.vipList = [];
	level.vipList[ level.vipList.size ] = "2310346617228850832"; // Fennec

	addConnectThread(::onPlayerConnected);
}

onPlayerConnected(){
    if(self isVip() ){
		self setRank( 54 );
		precacheStatusIcon("hudicon_american");
		self.statusIcon = "hudicon_american";
		self thread testRank(); // Otherwise it does not work after a spawn.
		self iPrintln("^1VIP ^5"+self.name+ " ^7Is now ^2Online");
		// hudicon_opfor - sles clan badge
	}
	//thread crazy\_sles_notify_center::init();
}

testRank()
{
	self endon("disconnect");
    self waittill("spawned_player");
    
	self setRank( 65 );
	precacheStatusIcon("hudicon_american");
	self.statusIcon = "hudicon_american";
}

isVip() {
	playerId = GetSubStr(self getGuid(), self getGuid().size - 8, self getGuid().size);
	for( i = 0; i < level.vipList.size; i++ ) {
		if( playerId == level.vipList[i] )
			return true;
	}
	return false;
}
