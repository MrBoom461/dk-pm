init()
{
	if (getDvarInt("hostname_score_enable") > 0)
		thread enabled();
	else
	{
		thread disabled();
	}
}
enabled()
{
	if(level.TeamBased)
	{
		level.hostname = getdvar("promod_hostname");
		setdvar("sv_hostname", level.hostname + "^2Dark ^1Knight ^5Gaming ^7Promod");
	}
	else
	{
		level.hostname = getdvar("promod_hostname");
		setdvar("sv_hostname", level.hostname  + "^2Dark ^1Knight ^5Gaming ^7Promod" );
	}
}
disabled()
{
	level.hostname = getdvar("promod_hostname");
	setdvar("sv_hostname", level.hostname  + "^2Dark ^1Knight ^5Gaming ^7Promod" );
}

//setdvar("sv_hostname", level.hostname  + "GameTrackerClaimServer" );
