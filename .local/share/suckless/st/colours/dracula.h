/* vim: set ft=c: */

/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	[0] = "#282a36", /* black   */
	[1] = "#ff5555", /* red     */
	[2] = "#50fa7b", /* green   */
	[3] = "#f1fa8c", /* yellow  */
	[4] = "#bd93f9", /* blue    */
	[5] = "#ff79c6", /* magenta */
	[6] = "#8be9fd", /* cyan    */
	[7] = "#e5e5e5", /* white   */

	/* 8 bright colors */
	[8]  = "#44475a", /* black   */
	[9]  = "#ff6e67", /* red     */
	[10] = "#5af78e", /* green   */
	[11] = "#f1fa8c", /* yellow  */
	[12] = "#caa9fa", /* blue    */
	[13] = "#ff92d0", /* magenta */
	[14] = "#9aedfe", /* cyan    */
	[15] = "#f8f8f2", /* white   */

	/* special colors */
	[256] = "#1e1f29", /* background */
	[257] = "#ffffff", /* foreground */
};
