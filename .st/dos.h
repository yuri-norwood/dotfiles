/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#a80000", /* red     */
  [2] = "#00a800", /* green   */
  [3] = "#a85400", /* yellow  */
  [4] = "#0000a8", /* blue    */
  [5] = "#a800a8", /* magenta */
  [6] = "#00a8a8", /* cyan    */
  [7] = "#a8a8a8", /* white   */

  /* 8 bright colors */
  [8]  = "#545454", /* black   */
  [9]  = "#fc5454", /* red     */
  [10] = "#54fc54", /* green   */
  [11] = "#fcfc54", /* yellow  */
  [12] = "#5454fc", /* blue    */
  [13] = "#fc54fc", /* magenta */
  [14] = "#54fcfc", /* cyan    */
  [15] = "#fcfcfc", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#a8a8a8", /* foreground */
};
