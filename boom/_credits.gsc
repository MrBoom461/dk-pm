/****************************************
*                                       *
*    ▒█▀▀▀ █▀▀█ █▀▀█ █▀▄▀█ █▀▀ █▀▀      *
*    ▒█▀▀▀ █▄▄▀ █▄▄█ █░▀░█ █▀▀ ▀▀█      *
*    ▒█░░░ ▀░▀▀ ▀░░▀ ▀░░░▀ ▀▀▀ ▀▀▀      *
*     https://tharindujayakody.me       *
*                                       *
*****************************************/
/*
Credits : Braxi, Bipo
*/

#include duffman\_common;
// #include maps\mp\gametypes\_endroundmusic;

main()
{

	thread partymode();
	randomsong = (1+randomInt(3));

	playSoundOnAllPlayers( "end" + randomsong );


	waittillframeend;

	level.creditTime = 6;
	freezeall();
	duffman\_common::cleanScreen();
	wait 6;


	thread showCredit( "^5...::::: ^2Dark ^1Knights ^7GaminG ^5:::::...", 2.8 );
	wait 0.2;
	thread showCredit( "_______________________________________", 2.7 );
	wait 0.6;
	thread showCredit( "^1Server Owned By:", 1.9 );
	wait 0.4;
	thread showCredit( "^5JJAgent", 1.9 );
	wait 0.4;
	thread showCredit( "^5ViRuS", 1.9 );
	wait 0.4;
	thread showCredit( "^1Developed By:", 1.9 );
	wait 0.4;
	thread showCredit( "^5MrBoom", 1.9 );
	wait 0.4;
	thread showCredit( "^5Frames", 1.9 );
	wait 0.4;
	thread showCredit( "____________________________", 2.4 );
	wait 0.5;
	thread showCredit( " ^5....:::: ^1www.dkpromod.tk ^5::::....", 2 );
	wait 0.5;
	thread showCredit( " ^2Our Discord Server ^7- ^5discord.dkpromod.tk", 2 );
	wait 0.5;
	thread showCredit( "______________", 2.5 );
	wait 0.8;
	thread showCredit( "^2Mod By ^7Team ^5EN", 1.6 );
	wait 0.6;
	thread showCredit( "______________", 2.5 );
	wait 0.6;
	thread showCredit( "^3Thanks For Playing On ^2Dark ^1Knight ^5Gaming ^7Promod^1!", 2.4 );
	wait 0.5;           
	thread showCredit( "______________________________________________________________________________", 1.6 );
	wait 0.8;
	thread showCredit( "^1#GoHomeGota2022", 1.9 );


	wait 0.1; 

	//self thread addDisplay();
	wait 4.5;
	wait level.creditTime;
	wait 1.2;

	boom\_mapvote::init();
}

addDisplay(){

	creditAdd = newHudElem();
	creditAdd.font = "objective";
	creditAdd.alignX = "center";
	creditAdd.alignY = "top";
	creditAdd.horzAlign = "center";
	creditAdd.vertAlign = "top";
	creditAdd showCredit( "^1#GoHomeGota2022", 2 );
	creditAdd.x = 0;
	creditAdd.y = 540;
	creditAdd.sort = 2; //-3
	creditAdd.alpha = 1;
	creditAdd moveOverTime(level.creditTime);
	creditAdd.y = 30;
	creditAdd.foreground = true;
	wait level.creditTime;
	wait 5;
	creditAdd destroy();
}


showCredit( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = 0;
	end_text.y = 540;
	end_text.sort = 3; //-3
	end_text.alpha = 1;
	//end_text.glowColor = (0.5,0.1,0.8);
	//end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = true;
	wait level.creditTime;
	end_text destroy();
}



freezeall()
{
	for(i=0;i<level.players.size;i++)
		level.players[i] freezecontrols(true);
}
