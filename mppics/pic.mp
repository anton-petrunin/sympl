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



p0=z0+(0,eps)--z0+(eps,eps){right}..z.max{right}..{right}z1+(-eps,eps)--z1+(eps,eps){right}..(z.min){right}..{right}z2+(-eps,eps)--z2+(0,eps);

hatchfill (eps,eps)--(eps,-eps)--(-eps,-eps)--(-eps,eps)--cycle  withcolor (60, 1.4mm, -.5bp);
hatchfill ((eps,eps)--(eps,-eps)--(0,-eps)--(0,eps)--cycle) shifted z0   withcolor (60, 1.4mm, -.5bp);
hatchfill ((-eps,eps)--(-eps,-eps)--(0,-eps)--(0,eps)--cycle) shifted z2   withcolor (60, 1.4mm, -.5bp);

drawarrow ddline(z0,z2)(0,.2);
drawarrow ddline(z0-z.r,z0+z.r)(0,0);

draw p0;
draw p0 rotated 180;

draw ((eps,eps)--(eps,-eps)) shifted z0 dashed evenly;
draw ((eps,eps)--(eps,-eps))  dashed evenly;
draw ((-eps,eps)--(-eps,-eps))  dashed evenly;
draw ((-eps,eps)--(-eps,-eps)) shifted z2 dashed evenly;
draw ((0,eps)--(0,-eps)) shifted z2 dashed evenly;

z.neck=.22*z0-1.1*z.r;
drawarrow z.neck+(-40,eps/2)--z.0+(eps/2,-3*eps/2);
drawarrow z.neck+(0,eps/2)--z1+(0,-3*eps/2);
drawarrow z.neck+(40,eps/2)--z2+(-eps/2,-3*eps/2);

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

beginfig(3) 
save u, eps;
u:=2cm;
save p; path p[];
eps=.3*u;

z.r=(2**.5*eps,0);
z.t=z.r rotated 90;
z.b =z.r rotated -90;
z.l=-z.r;
z.rr=2*z.r;
z.rrr=4*z.r;
z.ll=2*z.l;
z.lll=4*z.l;

hatchfill z.r--z.t--z.l--z.b--cycle  withcolor (105, 1.4mm, -.5bp);
hatchfill z.r--z.t--z.l--z.b--cycle  withcolor (15, 1.4mm, -.5bp);

p0=.5[z.r,z.t]..(.5)[z.rr,z.rrr]..(.5)[z.r,z.b]..(.5)[z.l,z.t]..(.5)[z.ll,z.lll]..(.5)[z.l,z.b]..cycle;
p1=z.r{z.r-z.b}..z.rr{down}..{z.t-z.r}z.r--z.t{z.t-z.r}..z.lll{down}..{z.r-z.b}z.b--cycle;
p2=z.l{z.l-z.t}..z.ll{up}..{z.b-z.l}z.l--z.b{z.b-z.l}..z.rrr{up}..{z.l-z.t}z.t--cycle;
p3=(point 3.1 of p2)-(.14*u*unitvector(direction 3.1 of p2) rotated 90)
..(point 3.3 of p2)-(.14*u*unitvector(direction 3.3 of p2) rotated 90)
..(point 3.5 of p2)-(.14*u*unitvector(direction 3.5 of p2) rotated 90)
..(point 3.7 of p2)-(.14*u*unitvector(direction 3.7 of p2) rotated 90)
..(point 3.9 of p2)-(.14*u*unitvector(direction 3.9 of p2) rotated 90)
..(point 4.1 of p2)-(.14*u*unitvector(direction 4.1 of p2) rotated 90)
..(point 4.3 of p2)-(.14*u*unitvector(direction 4.3 of p2) rotated 90)
..(point 4.5 of p2)-(.14*u*unitvector(direction 4.5 of p2) rotated 90)
..(point 4.7 of p2)-(.14*u*unitvector(direction 4.7 of p2) rotated 90)
..(point 4.9 of p2)-(.14*u*unitvector(direction 4.9 of p2) rotated 90)
..(point 3.1 of p1)-(.14*u*unitvector(direction 3.1 of p1) rotated 90)
..(point 3.3 of p1)-(.14*u*unitvector(direction 3.3 of p1) rotated 90)
..(point 3.5 of p1)-(.14*u*unitvector(direction 3.5 of p1) rotated 90)
..(point 3.7 of p1)-(.14*u*unitvector(direction 3.7 of p1) rotated 90)
..(point 3.9 of p1)-(.14*u*unitvector(direction 3.9 of p1) rotated 90)
..(point 4.1 of p1)-(.14*u*unitvector(direction 4.1 of p1) rotated 90)
..(point 4.3 of p1)-(.14*u*unitvector(direction 4.3 of p1) rotated 90)
..(point 4.5 of p1)-(.14*u*unitvector(direction 4.5 of p1) rotated 90)
..(point 4.7 of p1)-(.14*u*unitvector(direction 4.7 of p1) rotated 90)
..(point 4.9 of p1)-(.14*u*unitvector(direction 4.9 of p1) rotated 90)..cycle;


draw p0;
draw p1 penbold;
draw p2 penbold;
draw p3 dashed evenly;

z.neck= (0,-1)*u;
drawarrow ddline(z.neck,z.b)(-.1,-.1);
label.bot(btex склеенные горловины etex, z.neck);

z.8=(-2,-.7)*u;
drawarrow ddline(z.8,point 4.2 of p0)(-.1,-.1);
label.bot(btex восьмёрка etex, z.8);

z.disc=(2.2,-.9)*u;
drawarrow ddline(z.disc,point 3 of p3)(-.1,-.1);
label.bot(btex объемлющий диск$B$ etex, z.disc);

z.ears=(0,1)*u;
drawarrow ddline(z.ears+(20,0),.5[z.r,z.rr])(-.05,0);
drawarrow ddline(z.ears+(-20,0),.5[z.l,z.ll])(-.05,0);
label.top(btex внутренние уши etex, z.ears);

z.a=(-2,.8)*u;
drawarrow ddline(z.a,point 3.7 of p1)(-.1,-.1);
label.top(btex график $a_-$ etex, z.a);

z.aa=(2,.8)*u;
drawarrow ddline(z.aa,point 4.3 of p2)(-.1,-.1);
label.top(btex график $a_+$ etex, z.aa);

endfig;

beginfig(4) 
save u, N, k;
u:=2cm;
save p; path p[];
N=8;


transform T;
(-1,1)*u=(-1,1)*u transformed T;
(1,1)*u=(1,1)*u transformed T;
(-1,-1)*u=(0,0)*u transformed T;

for k=.4, 1.2, 2.4, 4:
draw (-1,1)*u
for i=-N+1 step 1 until N :
...(i/N,sqrt(1/k**2+(i/N)**2)-sqrt(1/k**2+1)+1)*u transformed T
endfor
;
endfor

draw (-1,1)*u--(-1,-1)*u--(1,1)*u;

drawarrow (-1.2,0)*u--(1.3,0)*u;
drawarrow (0,-1.2)*u--(0,1.3)*u;
drawarrow ddline((.5,1)*u, (.5,sqrt(1/.4**2+(.5)**2)-sqrt(1/.4**2+1)+1)*u transformed T)(0,-.1);
drawarrow ddline((.7,.3)*u,(.5,.5)*u)(0,-.1);
drawarrow ddline((-1.3,.3)*u,(-1,.2)*u)(0,-.1);

label.lrt(btex $x$ etex, (1.3,0)*u);
label.ulft(btex $w$ etex, (0,1.3)*u);
label.ulft(btex $1$ etex, (0,1)*u);
label.llft(btex $-1$ etex, (-1,0)*u);
label.llft(btex $-1$ etex, (0,-1)*u);
label.lrt(btex $1$ etex, (1,0)*u);
label.top(btex график$(f_s)$ etex, (.6,1)*u);
label.rt(btex график$(f_\infty)$ etex, (.7,.3)*u);
label.lft(btex образ$(h)$ etex, (-1.3,.3)*u);

endfig;

beginfig(5) 
save u;
u:=1.4cm;
save p; path p[];

z.F=(.1,0)*u;



z.a0=(1.9,-1)*u;
z.a1=(1.5,0)*u;
z.a2=(2,1)*u;

draw z.a0..z.a1{z.F-z.a1 zscaled (0,-1)}..z.a2 penbold;

z.b0=(-2.7,-.4)*u;
z.b1=(-2,-.9)*u;
z.b2=(-1.5,-1.4)*u;

draw z.b0..z.b1{.7, -1}..z.b2 penbold;

z.c0=(-2.7,1)*u;
z.c1=(-2,.8)*u;
z.c2=(-1.5,1.3)*u;

draw z.c0..z.c1{.7, 1}..z.c2 penbold;

draw z.F--z.a1;

draw (-3,2)*u--(2.5,2)*u--(2.5,-2)*u--(-3,-2)*u--cycle;

dOt z.F, z.b1;

label.rt(btex {\Large $\H$} etex, z.a1);
label.rt(btex {\Large $\F$} etex, (2.5,0)*u);
label.lft(btex $F$ etex, z.F);
label.llft(btex $0$ etex, z.b1);
label.top(btex $\rho(\1,\phi_F)$ etex, .5[z.F,z.a1]);
endfig;

beginfig(6) 
save u;
u:=1cm;
save p; path p[];

z.shift=(2.6,0)*u;

p0=circle(origin, u);
p1= (u,0) rotated -10..(u/2,0) rotated -100..(u,0) rotated -190;
p2= (u,0) rotated -50..(u/3,0) rotated -140..(u,0) rotated -230;

draw p0;
draw  p1 rotated 180 dashed evenly;
draw  p1;
draw  p2 rotated 180 dashed evenly;
draw  p2;

draw p0 shifted z.shift;
draw  p1 rotated 180 shifted z.shift dashed evenly;
draw  p1 shifted z.shift;
draw ellipse_canonical(.7*u, .5*u) rotated -5 shifted ((-.1,.3)*u) shifted z.shift;
draw ellipse_canonical(.35*u, .2*u) rotated -5 shifted ((-.2,.3)*u) shifted z.shift;

label.bot(btex точная etex, (0,-u)+(0,-1));
label.bot(btex не точная etex, (0,-u) + z.shift+(0,-1));

endfig;

beginfig(7) 
save u;
u:=1cm;
save p; path p[];

z.ur=(1,1)*u;
z.shift=(2.6,0)*u;

draw z.ur yscaled -1--z.ur;
draw -z.ur--z.ur xscaled -1;
draw -z.ur yscaled 0-- z.ur yscaled 0;
draw -z.ur yscaled 0{1,2}..tension .8..{1,2}z.ur yscaled 0;

draw (z.ur yscaled -1--z.ur) shifted z.shift;
draw (-z.ur--z.ur xscaled -1) shifted z.shift;
draw (-z.ur yscaled 0-- z.ur yscaled 0) shifted z.shift;
draw (-z.ur yscaled 0-- z.ur yscaled 0) shifted z.shift shifted ((0,.5)*u);
drawarrow ((-.333,.1)*u--(-.333,.4)*u) shifted z.shift;
drawarrow ((.333,.1)*u--(.333,.4)*u) shifted z.shift;

label.bot(btex точная etex, (0,-u)+(0,-1));
label.bot(btex не точная etex, (0,-u) + z.shift+(0,-1));
endfig;

beginfig(8) 
save u;
u:=1cm;
save p; path p[];

p0=circle(origin, u);
p1= (u,0) rotated -10..(u/4,0) rotated -100..(u,0) rotated -190;
p2=circle(origin, u/5);


draw p0;
draw  p1 rotated 180 dashed evenly;
draw  p1;
draw p2 shifted ((-.5,.4)*u);
draw p2 shifted ((.2,.4)*u);
drawarrow (-.25,.4)*u--(-.05,.4)*u;

endfig;
end
