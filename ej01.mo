model ej01
extends p1;
extends p2;
Modelica.SIunits.Force Fr;
parameter Modelica.SIunits.CoefficientOfFriction u(min=0, max=1);
Modelica.SIunits.Acceleration a;
parameter Modelica.SIunits.Mass m;
parameter Modelica.SIunits.Position x;
parameter Modelica.SIunits.Force WindF;
equation
m*a=F-Fr-WindF;
Fr=u*9.81*m;
der(x)=v;
end ej01;
