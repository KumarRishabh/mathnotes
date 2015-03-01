if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="diags-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
pair A,B,C,D,A1,C1,M;
B=(-1,3);
C=(4,4);
D=(5,1);
A1=(.1,1.7);
C1=A1+(5,1);
draw(A..A1..B--C..C1..D--cycle);
draw(A1--C1);
M=(A1+C1)/2;
pair v=(1,.2);
pair p=(-.2,1);
draw(M--M+v,linewidth(.2mm),EndArrow);
draw(M--M+p,linewidth(.2mm),EndArrow);
label("$\frac{\partial F}{\partial s}$",M+v,-p);
label("$\frac{\partial F}{\partial t}$",M+p,v);
pair AD=(A+D)/2;
pair BC=(B+C)/2;
draw(AD..M..BC);
