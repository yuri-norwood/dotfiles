/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	[0] = "#073642", /* black   */
	[1] = "#dc322f", /* red     */
	[2] = "#859900", /* green   */
	[3] = "#b58900", /* yellow  */
	[4] = "#268bd2", /* blue    */
	[5] = "#d33682", /* magenta */
	[6] = "#2aa198", /* cyan    */
	[7] = "#eee8d5", /* white   */

	/* 8 bright colors */
	[8]  = "#002b36", /* black   */
	[9]  = "#cb4b16", /* red     */
	[10] = "#586e75", /* green   */
	[11] = "#657b83", /* yellow  */
	[12] = "#839496", /* blue    */
	[13] = "#6c71c4", /* magenta */
	[14] = "#93a1a1", /* cyan    */
	[15] = "#fdf6e3", /* white   */

	/* special colors */
	[256] = "#fdf6e3", /* background */
	[257] = "#657b83", /* foreground */
};
