///////////////////////////////////////////////////////////////
////|         |///|        |///|       |/\  \/////  ///|  |////
////|  |////  |///|  |//|  |///|  |/|  |//\  \///  ////|__|////
////|  |////  |///|  |//|  |///|  |/|  |///\  \/  /////////////
////|          |//|  |//|  |///|       |////\    //////|  |////
////|  |////|  |//|         |//|  |/|  |/////    \/////|  |////
////|  |////|  |//|  |///|  |//|  |/|  |////  /\  \////|  |////
////|  |////|  |//|  | //|  |//|  |/|  |///  ///\  \///|  |////
////|__________|//|__|///|__|//|__|/|__|//__/////\__\//|__|////
///////////////////////////////////////////////////////////////
/*
	BraXi's Death Run Mod
	
	Website: www.braxi.org
	E-mail: paulina1295@o2.pl

	[DO NOT COPY WITHOUT PERMISSION]

	showCredit() written by Bipo.
*/

main()
{
	level.creditTime = 6;

	duffman\_common::cleanScreen();

	thread showCredit( "^3Server Owner:", 2.7 );
	wait 0.5;
	thread showCredit( "^8Mr.Frames", 2.4 );
	wait 0.5;
	thread showCredit( "", 1.4 );
	wait 0.5;
	thread showCredit( "^3Head Admin:", 2.7 );
	wait 0.5;
	thread showCredit( "^9|^3EN^9|.^4Natzu04 ^3- ^3(^9100^3)", 1.8 );
	wait 0.5;
	thread showCredit( ".", 1.8 );
	wait 0.5;
	thread showCredit( ".", 1.8 );
	wait 0.5;
	thread showCredit( ".", 1.8 );
	wait 0.5;
	thread showCredit( "", 1.4 );
	wait 0.5;
	thread showCredit( "^3Other Admins:", 2.7 );
	wait 0.5;
	thread showCredit( " ^9|^3EN^9| ^4SesSi Boi ^3-, 1.8 );
	wait 0.5;
	thread showCredit( ".", 1.8 );
	wait 0.5;
	thread showCredit( ".", 1.8 );
	wait 0.5;
	thread showCredit( "", 1.4 );
	wait 0.5;
	thread showCredit( "^2Server Hosted by", 2.7 );
	wait 0.5;
	thread showCredit( "^4CNS -www.cns.lk", 2.0 );
	wait 0.5;
	thread showCredit( "", 1.4 );
	wait 0.5;
	thread showCredit( "^2Additional Help:", 2.7 );
	wait 0.5;
	thread showCredit( "^3MOD by ^1Mr.Frames", 1.8 );
	wait 0.5;
	thread showCredit( "^3Develope By^8Early NoOBs Team", 1.8 );
	wait 0.5;
	thread showCredit( "^3Hosted By ^8Mr.Frames", 1.8 );
	wait 0.5;
	thread showCredit( "", 1.4 );
	wait 0.5;
	thread showCredit( "^3Thanks for playing  ^3Early NooBs ^5Gaming ^1S&D ^6Promod Sri Lanka ^3v3.0^7!", 2.4 );
	wait 0.5;
	thread showCredit( "^2Perpare For ^3Next map", 2.7 );
	wait 0.5;
	thread showCredit( "------------------------------------------------------------------------------", 1.6 );
	wait 0.5;
	thread showCredit( "^5Open^9|^3EN^9|^5Gaming ^1S&D", 4.6 );
	wait 0.5;
	thread showCredit( "------------------------------------------------------------------------------", 1.6 );
	wait 0.5;	
	thread showCredit( "Ummmmmmmmmmmmmmmmmmmmmmmmma", 3.5 );
	wait 0.5;




	

	
	/*if( level.dvar["lastmessage"] != "" )
	{
		wait 0.8;
		thread showCredit( level.dvar["lastmessage"], 2.4 );
	}*/

	wait level.creditTime + 1;
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
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	end_text.glowColor = (.1,.8,0);
	end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = true;
	wait level.creditTime;
	end_text destroy();
}


neon()
{
	neon = addNeon( "^1www.AfterLifeGaming.net", 1.4 );
	while( 1 )
	{
		neon moveOverTime( 12 );
		neon.x = 800;
		wait 15;
		neon moveOverTime( 12 );
		neon.x = -800;
		wait 15;
	}
}

addNeon( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = -200;
	end_text.y = 8;
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	//end_text.glowColor = (1,0,0.1);
	//end_text.glowAlpha = 1;
	end_text.foreground = true;
	return end_text;
}
