#include duffman\_common;

init()
{
	level.delay = 10;
	level thread advertisement();
}

saytxt(txt)
{
	level hudmsg(txt);
}

advertisement()
{	
	while(1)
	{
	
		level hudmsg("^2^3[^2EN^3] ^0- ^3Sri Lanka");
	
		wait level.delay;
	
		level hudmsg("^9Check Your Xlrstats By Typing ^1!XLRstats ^9 or Visit  ^8htttps://www.earlynoobs.ga/xlr");
	
		wait level.delay;
	
		level hudmsg("^3Visit Our Web Site ^2: ^8earlynoobs.ga");
		
		wait level.delay;
		
		level hudmsg("^2Join our ^4FB ^2Group ^0: ^3www.fb.com/earlynoobs.ga/");
		
		wait level.delay;
		
		level hudmsg("^3Sri Lanka's No.1 Online Gaming Community");
		
		wait level.delay;
		
		level hudmsg("^3Server developed by ^0: ^7Mr.Frames");
		
		wait level.delay;
		
		level hudmsg("^7Now server admins can take ^1player's screenshots.");
		
		wait level.delay;

	}
}

hudmsg(text) 
{
	msg = addTextHud( level, 750, 470, 1, "left", "middle", undefined, undefined, 1.6, 888 );
	msg SetText(text);
	msg.sort = 102;
	msg.foreground = 1;
	msg.archived = true;
	msg.alpha = 1;
	msg.fontScale = 1.5;
	msg.color = level.randomcolour;
	msg MoveHud(30,-1300);
	wait 20;
	msg destroy();
}
