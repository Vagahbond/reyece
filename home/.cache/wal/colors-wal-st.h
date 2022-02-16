const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#050505", /* black   */
  [1] = "#9E4427", /* red     */
  [2] = "#927061", /* green   */
  [3] = "#A58975", /* yellow  */
  [4] = "#6C7C81", /* blue    */
  [5] = "#6A9599", /* magenta */
  [6] = "#A0A29C", /* cyan    */
  [7] = "#dbd6cf", /* white   */

  /* 8 bright colors */
  [8]  = "#999590",  /* black   */
  [9]  = "#9E4427",  /* red     */
  [10] = "#927061", /* green   */
  [11] = "#A58975", /* yellow  */
  [12] = "#6C7C81", /* blue    */
  [13] = "#6A9599", /* magenta */
  [14] = "#A0A29C", /* cyan    */
  [15] = "#dbd6cf", /* white   */

  /* special colors */
  [256] = "#050505", /* background */
  [257] = "#dbd6cf", /* foreground */
  [258] = "#dbd6cf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
