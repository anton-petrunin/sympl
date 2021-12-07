input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[twoside]{book}
\usepackage{../book}
\usepackage{../notations}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(1) 
save u;
u:=1cm;
save p; path p[];

p1=circle(origin,1*u);
p2=(.8,0)*u{up}..(-.7,0)*u{down}..(.6,0)*u{up}..(-.5,0)*u{down}..(.4,0)*u{up}..(-.1,0)*u{down}..cycle;

draw p1 penbold;
draw p2;
endfig;

beginfig(2) 
save u, eps;
u:=2cm;
save p; path p[];
eps=.3*u;

z1=origin;
z2=(2,0)*u;
z0=-z2;
z.r=(0,1.7)*u;
z.max=(-1.2,.5)*u+(0,eps);
z.min=(1,1.1)*u+(0,eps);
z.neck=.25*z0-1.1*z.r;


p0=z0+(0,eps)--z0+(eps,eps){right}..z.max{right}..{right}z1+(-eps,eps)--z1+(eps,eps){right}..(z.min){right}..{right}z2+(-eps,eps)--z2+(0,eps);

hatchfill (eps,eps)--(eps,-eps)--(-eps,-eps)--(-eps,eps)--cycle  withcolor (60, 1.4mm, -.5bp);
hatchfill ((eps,eps)--(eps,-eps)--(0,-eps)--(0,eps)--cycle) shifted z0   withcolor (60, 1.4mm, -.5bp);
hatchfill ((-eps,eps)--(-eps,-eps)--(0,-eps)--(0,eps)--cycle) shifted z2   withcolor (60, 1.4mm, -.5bp);

drawarrow ddline(z0,z2)(0,.2);
drawarrow ddline(z0-z.r,z0+z.r)(0,0);
drawarrow z.neck+(-40,eps/2)--z.0+(eps/2,-3*eps/2);
drawarrow z.neck+(0,eps/2)--z1+(0,-3*eps/2);
drawarrow z.neck+(40,eps/2)--z2+(-eps/2,-3*eps/2);

draw p0;
draw p0 rotated 180;

draw ((eps,eps)--(eps,-eps)) shifted z0 dashed evenly;
draw ((eps,eps)--(eps,-eps))  dashed evenly;
draw ((-eps,eps)--(-eps,-eps))  dashed evenly;
draw ((-eps,eps)--(-eps,-eps)) shifted z2 dashed evenly;
draw ((0,eps)--(0,-eps)) shifted z2 dashed evenly;

label.lft(btex $r$ etex, z0+z.r);
label.bot(btex $t$ etex, 1.4*z2);
label.lft(btex $\epsilon$ etex, z0+(-1,eps));
label.lft(btex $-\epsilon$ etex, z0+(-1,-eps));
label.lrt(btex $\epsilon$ etex, z0+(eps+1,0));
label.llft(btex $1-\epsilon$ etex, z1+(-eps-1,0));
label.lrt(btex $1+\epsilon$ etex, z1+(eps+1,0));
label.llft(btex $2-\epsilon$ etex, z2+(-eps-1,0));
label.lrt(btex $2$ etex, z2+(1,0));
label(btex $C$ etex, z.min yscaled .5);
label.bot(btex тонкие горловины etex, .z.neck);
endfig;

end
