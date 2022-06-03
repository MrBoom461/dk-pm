//â–„ â–€ â–ˆâ–€â–€ â–€ â–„
//â–ˆ â–‘ â–ˆâ–‘â–‘ â–‘ â–ˆ
//â–€ â–„ â–€â–€â–€ â–„ â–€
//
//â–ˆâ–€â–€ â–ˆâ–€â–€ â–ˆâ–€â–€â–ˆ â–‘â–€â–‘ â–ˆâ–€â–€â–ˆ â–€â–€â–ˆâ–€â–€   â–ˆâ–€â–€â–„ â–ˆâ–‘â–‘â–ˆ   â–ˆâ–€â–€â–„ â–ˆâ–€â–€ â–ˆâ–€â–„â–€â–ˆ â–ˆâ–€â–€â–ˆ â–ˆâ–€â–€â–„
//â–€â–€â–ˆ â–ˆâ–‘â–‘ â–ˆâ–„â–„â–€ â–€â–ˆâ–€ â–ˆâ–‘â–‘â–ˆ â–‘â–‘â–ˆâ–‘â–‘   â–ˆâ–€â–€â–„ â–ˆâ–„â–„â–ˆ   â–ˆâ–‘â–‘â–ˆ â–ˆâ–€â–€ â–ˆâ–‘â–€â–‘â–ˆ â–ˆâ–‘â–‘â–ˆ â–ˆâ–‘â–‘â–ˆ Mr.Frames
//â–€â–€â–€ â–€â–€â–€ â–€â–‘â–€â–€ â–€â–€â–€ â–ˆâ–€â–€â–€ â–‘â–‘â–€â–‘â–‘   â–€â–€â–€â–‘ â–„â–„â–„â–ˆ   â–€â–€â–€â–‘ â–€â–€â–€ â–€â–‘â–‘â–‘â–€ â–€â–€â–€â–€ â–€â–‘â–‘â–€
//â–„ â–€ â–ˆâ–€â–€ â–€ â–„
//â–ˆ â–‘ â–ˆâ–‘â–‘ â–‘ â–ˆ
//â–€ â–„ â–€â–€â–€ â–„ â–€


/*
 
^1 = red
^2 = green
^3 = yellow
^4 = blue
^5 = cyan(light blue)
^6 = pink
^7 = white
^8 = Axis killfeed colour
^9 = Allies killfeed colour
^0 = Black
 
*/
 
 
 
init( modVersion )
{
	precachestring( &" " );
	precachestring( &"^6Respect Rules ^1or ban" );
 
 
 
	if(isDefined(level.rulesText))
		level.rulesText destroy();
 
	level.rulesText = newHudElem();
	level.rulesText.x = 10;
	level.rulesText.y = 400;
	level.rulesText.alpha = 0;
	level.rulesText fadeOverTime(1);
	level.rulesText.alignX = "LEFT";
	level.rulesText.alignY = "TOP";
	level.rulesText.horzAlign = "LEFT";
	level.rulesText.vertAlign = "TOP";
	level.rulesText.alpha = 1;
	level.rulesText.sort = 10;
	level.rulesText.fontScale = 1.6;
 
	if(isDefined(level.rulesTitle))
		level.rulesTitle destroy();
 
	level.rulesTitle = newHudElem();
	level.rulesTitle.x = 10;
	level.rulesTitle.y = 400;
	level.rulesTitle.alignX = "LEFT";
	level.rulesTitle.alignY = "TOP";
	level.rulesTitle.horzAlign = "LEFT";
	level.rulesTitle.alpha = 0;
	level.rulesTitle fadeOverTime(1);
	level.rulesTitle.glowColor = (0.0, 0.0, 1.0);
	level.rulesTitle.glowAlpha = 1;
	level.rulesTitle.vertAlign = "TOP";
	level.rulesTitle.alpha = 1;
	level.rulesTitle.sort = 10;
	level.rulesTitle.fontScale = 1.5;
	level.rulesTitle setText("");
	for(;;)
	{
	    level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^3Powered By ^1Early Noobs ^5e-Sports");
		wait 5;
		level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^9Join WIth Our ^1TeamSpeak3 ^2Server ^3Ts.earlynoobs.ga ^9");
		wait 5;
		level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^1EN^0| ^1Promod SnD ^31.3");
		wait 5;
	    level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^5Screenshots at ^2earlynoobs.ga");
		wait 5;
		level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^1Dont't Use Scripts OR Hacks");
		wait 5;
		level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^9It will Get ban You From This Server");
		wait 5;
		level.rulesText fadeOverTime(1);
		level.rulesText.alpha = 1;
		level.rulesText setText("^3Early NoOBs ^2Promod ^1S&D ^8Server");
		wait 5;
	}
}
