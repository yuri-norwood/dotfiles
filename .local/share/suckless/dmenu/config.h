/* vim: set ft=c: */

/* See LICENSE file for copyright and license details. */

/*
 * Default settings; can be overriden by command line.
 */
static          int   topbar  = 1;    /* -b          : 0 => bottom, 1 => top */
static const    char *prompt  = NULL; /* -p <prompt> : prompt to display     */
static unsigned int   lines   = 0;    /* -l          : number of lines       */
static const    char *fonts[] = {     /* -fn         : X11 fonts             */
	"monospace:size=10", // default
};

/*
 * Colourscheme definitions
 */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg                  */
	[SchemeNorm] = { "#bbbbbb", "#222222" },
	[SchemeSel]  = { "#eeeeee", "#005577" },
	[SchemeOut]  = { "#000000", "#00ffff" },
};

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
