if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="diags-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
pair O;
O=(0,0);
draw(circle(O,1));
draw(circle(O,2));
draw(circle((2.2,0),.5));
label("$C_i$",(2.7,0),E);
real a,b,c;
a=2.2;
b=2;
c=.5;
real ga,be;
ga=acos((a^2+b^2-c^2)/(2*a*b));
be=acos((a^2+c^2-b^2)/(2*a*c));
real K;
K=ga*b^2+be*c^2-2*sqrt((a+b+c)*(a+b-c)*(a-b+c)*(-a+b+c)/16);
real r;
r=sqrt(K/pi);
draw(circle((2-r,0),r));
//fill(circle((2-r,0),r));
label("$D_i$",(2-2*r,0),.6*W);
//dot(2*expi(ga));
//dot((2.2,0)-.5*expi(be));
