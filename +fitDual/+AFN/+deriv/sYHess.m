function Hy = sYHess(p1,p2,q1x,q2x,q1y,q2y,rx,ry)
%SYHESS
%    HY = SYHESS(P1,P2,Q1X,Q2X,Q1Y,Q2Y,RX,RY)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    04-Jul-2017 12:43:02

t3 = p1-p2;
t9 = p1.*q1x;
t10 = p2.*q2x;
t11 = rx.*t3;
t2 = -t9+t10+t11;
t5 = p1.*q1y;
t6 = p2.*q2y;
t7 = ry.*t3;
t4 = -t5+t6+t7;
t8 = p1.^2;
t12 = t2.^2;
t13 = t4.^2;
t14 = t12+t13;
t15 = 1.0./t14.^(3.0./2.0);
t16 = 1.0./t14.^(5.0./2.0);
t17 = q1x-rx;
t18 = q1y-ry;
t19 = q2x-rx;
t20 = q2y-ry;
t21 = t2.*t8.*t15;
t22 = t21-t2.*t8.*t13.*t16.*3.0;
t23 = t2.*t17.*2.0;
t24 = t4.*t18.*2.0;
t25 = t23+t24;
t26 = p1.*p2.*t2.*t13.*t16.*3.0;
t36 = p1.*p2.*t2.*t15;
t27 = t26-t36;
t28 = t2.*t19.*2.0;
t29 = t4.*t20.*2.0;
t30 = t28+t29;
t31 = p1.*t2.*t15.*t18;
t32 = 1.0./sqrt(t14);
t33 = p1.*t15.*t25.*(1.0./2.0);
t34 = p1.*p2.*t4.*t12.*t16.*3.0;
t35 = t34-p1.*p2.*t4.*t15;
t37 = p2.*t2.*t4.*t16.*t25.*(3.0./2.0);
t38 = t37-p2.*t2.*t15.*t18-p2.*t4.*t15.*t17;
t39 = p2.^2;
t40 = p1.*p2.*t4.*t13.*t16.*3.0;
t41 = t40-p1.*p2.*t4.*t15.*3.0;
t42 = p2.*t13.*t16.*t25.*(3.0./2.0);
t43 = t42-p2.*t15.*t25.*(1.0./2.0)-p2.*t4.*t15.*t18.*2.0;
t44 = t2.*t15.*t39;
t45 = t44-t2.*t13.*t16.*t39.*3.0;
t46 = p1.*t2.*t4.*t16.*t30.*(3.0./2.0);
t47 = t46-p1.*t2.*t15.*t20-p1.*t4.*t15.*t19;
t48 = p1.*t13.*t16.*t30.*(3.0./2.0);
t49 = t48-p1.*t15.*t30.*(1.0./2.0)-p1.*t4.*t15.*t20.*2.0;
t50 = t17.*t19.*2.0;
t51 = t18.*t20.*2.0;
t52 = t50+t51;
t53 = t4.*t16.*t25.*t30.*(3.0./4.0);
t54 = t53-t15.*t20.*t25.*(1.0./2.0)-t15.*t18.*t30.*(1.0./2.0)-t4.*t15.*t52.*(1.0./2.0);
t55 = p1.*q1x.*2.0;
t56 = p2.*t2.*t15.*t20;
t57 = p1.*q1y.*2.0;
t58 = p2.*t15.*t30.*(1.0./2.0);
Hy = [t4.*t8.*t15-t4.*t8.*t12.*t16.*3.0,t22,t31+t4.*t15.*(t55-p2.*q2x.*2.0+p1.*t17.*2.0-rx.*t3.*2.0).*(1.0./2.0)-p1.*t2.*t4.*t16.*t25.*(3.0./2.0),...
     t35,t27,t47,t22,...
     t4.*t8.*t15.*3.0-t4.*t8.*t13.*t16.*3.0,t32+t33+t4.*t15.*(t57-p2.*q2y.*2.0+p1.*t18.*2.0-ry.*t3.*2.0).*(1.0./2.0)+p1.*t4.*t15.*t18-p1.*t13.*t16.*t25.*(3.0./2.0),...
     t27,t41,t49,t31-t2.*t4.*t15+p1.*t4.*t15.*t17-p1.*t2.*t4.*t16.*t25.*(3.0./2.0),t32+t33-t13.*t15+p1.*t4.*t15.*t18.*2.0-p1.*t13.*t16.*t25.*(3.0./2.0),...
     t4.*t15.*(t17.^2.*2.0+t18.^2.*2.0).*(1.0./2.0)-t4.*t16.*t25.^2.*(3.0./4.0)+t15.*t18.*t25,...
     t38,t43,t54,t35,t27,t38,t4.*t15.*t39-t4.*t12.*t16.*t39.*3.0,t45,...
     t56+t4.*t15.*(-t55+p2.*q2x.*2.0+p2.*t19.*2.0+rx.*t3.*2.0).*(1.0./2.0)-p2.*t2.*t4.*t16.*t30.*(3.0./2.0),...
     t27,t41,t43,t45,t4.*t15.*t39.*3.0-t4.*t13.*t16.*t39.*3.0,...
     -t32+t58+t4.*t15.*(-t57+p2.*q2y.*2.0+p2.*t20.*2.0+ry.*t3.*2.0).*(1.0./2.0)+p2.*t4.*t15.*t20-p2.*t13.*t16.*t30.*(3.0./2.0),...
     t47,t49,t54,t56+t2.*t4.*t15+p2.*t4.*t15.*t19-p2.*t2.*t4.*t16.*t30.*(3.0./2.0),...
     -t32+t58+t13.*t15+p2.*t4.*t15.*t20.*2.0-p2.*t13.*t16.*t30.*(3.0./2.0),t4.*t15.*(t19.^2.*2.0+t20.^2.*2.0).*(1.0./2.0)-t4.*t16.*t30.^2.*(3.0./4.0)+t15.*t20.*t30];
