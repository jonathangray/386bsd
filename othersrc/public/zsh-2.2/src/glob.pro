void glob DCLPROTO((Lklist list,Lknode *np));
long qgetnum DCLPROTO((char **s));
int notstrcmp DCLPROTO((char **a,char **b));
int forstrcmp DCLPROTO((char **a,char **b));
void insert DCLPROTO((char *s));
int haswilds DCLPROTO((char *str));
int hasbraces DCLPROTO((char *str));
int xpandredir DCLPROTO((struct redir *fn,Lklist tab));
char *dyncat DCLPROTO((char *s1,char *s2));
char *tricat DCLPROTO((char *s1,char *s2,char *s3));
void xpandbraces DCLPROTO((Lklist list,Lknode *np));
char *getparen DCLPROTO((char *str));
int matchpat DCLPROTO((char *a,char *b));
void getmatch DCLPROTO((char **sp,char *pat,int dd));
char *getfullpath DCLPROTO((char *s));
void scanner DCLPROTO((Complist q));
int minimatch DCLPROTO((char **pat,char **str));
int domatch DCLPROTO((char *str,Comp c,int fist));
int doesmatch DCLPROTO((Comp c));
Complist parsepat DCLPROTO((char *str));
Comp parsereg DCLPROTO((char *str));
Complist parsecomplist DCLPROTO((void));
Comp parsecomp DCLPROTO((void));
Comp parsecompsw DCLPROTO((void));
int patmatch DCLPROTO((char *ss,char *tt));
void remnulargs DCLPROTO((char *s));
int qualdev DCLPROTO((struct stat *buf,long dv));
int qualnlink DCLPROTO((struct stat *buf,long ct));
int qualuid DCLPROTO((struct stat *buf,long uid));
int qualgid DCLPROTO((struct stat *buf,long gid));
int qualisdev DCLPROTO((struct stat *buf,long junk));
int qualmode DCLPROTO((struct stat *buf,long mod));
int qualflags DCLPROTO((struct stat *buf,long mod));
int qualiscom DCLPROTO((struct stat *buf,long mod));
