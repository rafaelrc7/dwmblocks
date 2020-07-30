//Modify this file to change what commands output to your statusbar, and recompile using the make command.

#define PATH(name)			"/home/rafael/.local/bin/blocks/"name

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	
	{"",		PATH("update.sh"),		0,					5},

	{"",		PATH("time.sh"),		1,					1},

	{"",		PATH("calendar.sh"),	0,					2},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
