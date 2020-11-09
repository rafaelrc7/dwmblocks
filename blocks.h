//Modify this file to change what commands output to your statusbar, and recompile using the make command.

#define PATH(name)			"/home/rafael/.local/bin/blocks/"name

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	{"",		PATH("spotify.sh"),		5,					20},

	{"",		PATH("cpu.sh"),			5,					10},
	{"",		PATH("memory.sh"),		5,					11},
	{"",		PATH("gpu.sh"),			5,					12},
	{"",		PATH("net.sh"),			1,					4},

	{"",		PATH("update.sh"),		0,					5},

	{"",		PATH("volume.sh"),		0,					3},

	{"",		PATH("calendar.sh"),	0,					2},
	{"",		PATH("time.sh"),		1,					1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '\0';
