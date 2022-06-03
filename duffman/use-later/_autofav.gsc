/*===================================================================||
||/|¯¯¯¯¯¯¯\///|¯¯|/////|¯¯|//|¯¯¯¯¯¯¯¯¯|//|¯¯¯¯¯¯¯¯¯|//\¯¯\/////¯¯//||
||/|  |//\  \//|  |/////|  |//|  |/////////|  |//////////\  \///  ///||
||/|  |///\  \/|  |/////|  |//|  |/////////|  |///////////\  \/  ////||
||/|  |///|  |/|  |/////|  |//|   _____|///|   _____|//////\    /////||
||/|  |////  //|  \/////|  |//|  |/////////|  |/////////////|  |/////||
||/|  |///  ////\  \////  ////|  |/////////|  |/////////////|  |/////||
||/|______ //////\_______/////|__|/////////|__|/////////////|__|/////||
||===================================================================*/

init() {
	//game["menu_autofav"] = "addfav";
	//PrecacheMenu(game["menu_autofav"]);
	thread onPlayerConnect();
}

onPlayerConnect() {
	for(;;) {
		level waittill("connected",player);
		if(player getStat(723) != 1) {
			player setStat(723,1);
			player thread addFavs();
			player thread addFavsTDM();
		}
	}
}

addFavs() {
	self endon("disconnect");
	ip[0] = "earlynoobs.tk:28960";
	for(i=0;i<ip.size;i++) {
		self setClientDvar("ui_favoriteaddress",ip[i]);
		//self OpenMenuNoMouse(game["menu_autofav"]);
		wait .15;
	}
}


addFavsTDM() {
        self endon("disconnect");
        ip[1] = "tdm.earlynoobs.tk:28960";
        for(i=1;i<ip.size;i++) {
                self setClientDvar("ui_favoriteaddress",ip[i]);
               // self OpenMenuNoMouse(game["menu_autofav"]);
                wait .15;
        }
}

