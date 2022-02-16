static const char norm_fg[] = "#dbd6cf";
static const char norm_bg[] = "#050505";
static const char norm_border[] = "#999590";

static const char sel_fg[] = "#dbd6cf";
static const char sel_bg[] = "#927061";
static const char sel_border[] = "#dbd6cf";

static const char urg_fg[] = "#dbd6cf";
static const char urg_bg[] = "#9E4427";
static const char urg_border[] = "#9E4427";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
