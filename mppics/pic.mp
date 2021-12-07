input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[twoside]{book}
\usepackage{book}
\usepackage{notations}
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



end
