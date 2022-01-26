%General
% a=10;
% b=5;
% c=17;
% ut=a/2;
% rt=a;
% k=b;

matricula=struct;
matricula.general=struct;
matricula.P01=struct;
matricula.P02=struct;
matricula.P03=struct;
matricula.P04=struct;
matricula.P05=struct;
a00344428=matricula;

%Problema 1

% num1=[c];
% den1=[a b];
% G1=tf(num1,den1);
% 
% %Open Loop P01
% a00344428.P01.OL.tau=a/b; 
% a00344428.P01.OL.tss=5*a/b;
% a00344428.P01.OL.yss=ut*c/b;
% 
% %Close Loop P01
% 
% a00344428.P01.CL.yss=rt*((k*c)/(b+k*c));
% a00344428.P01.CL.tau=a/b; 
% a00344428.P01.CL.tss=5*a/b;

%Problema 2
%e^(-0.004s) = -0.004s/2 + 1

num2 = [b*c*-0.004/2 b*c];
den2 = [4 c*a/22 c^2];
G2 = tf(num2,den2);
% 
% 
% %Open Loop P02
% a00344428.P02.OL.yss=ut*b*c/c^2; 
% 
% a00344428.P02.OL.wn=sqrt(c^2/4);
% a00344428.P02.OL.d=(c*a/22)/(2*4*a00344428.P02.OL.wn);
% a00344428.P02.OL.wd=a00344428.P02.OL.wn*sqrt(1-(a00344428.P02.OL.d)^2);
% a00344428.P02.OL.tss= 4/(a00344428.P02.OL.d*a00344428.P02.OL.wn);
% 
% %Close Loop P02
% a00344428.P02.CL.yss = rt*((k*b*c)/(c^2+k*b*c));
% 
% a00344428.P02.CL.wn = sqrt((c^2+b*c*k)/4);
% a00344428.P02.CL.d =((c*a/22)+(-0.004*b*c/2)*k)/(2*4*a00344428.P02.CL.wn);
% a00344428.P02.CL.wd=a00344428.P02.CL.wn*sqrt(1-(a00344428.P02.CL.d)^2);
% a00344428.P02.CL.tss= 4/(a00344428.P02.CL.d*a00344428.P02.CL.wn);

%Problema 3
% e^(-0.006s) = -0.006s/2 + 1

num3 = [4*a*(-.006/2) 4*a];
den3 = [1 (b+c) b*c];
G3 = tf(num3,den3);
%  
% a00344428.P03.num=num3;
% a00344428.P03.den=den3;
% 
% %Open Loop P03
% a00344428.P03.OL.yss=ut*4*a/(b*c); 
% 
% a00344428.P03.OL.wn=sqrt(b*c);
% a00344428.P03.OL.d=(b+c)/(2*a00344428.P03.OL.wn);
% a00344428.P03.OL.wd=a00344428.P03.OL.wn*sqrt(1-(a00344428.P03.OL.d)^2);
% a00344428.P03.OL.tss=4/(a00344428.P03.OL.d*a00344428.P03.OL.wn);
% 
% %Close Loop P03
% a00344428.P03.CL.yss=rt*4*a*k/(b*c+4*a*k); 
% 
% a00344428.P03.CL.wn=sqrt(b*c + 4*a*k);
% a00344428.P03.CL.d=(b+c+(-0.006*4*a*k/2))/(2*a00344428.P03.CL.wn);
% a00344428.P03.CL.wd=a00344428.P03.CL.wn*sqrt(1-(a00344428.P03.CL.d)^2);
% a00344428.P03.CL.tss=4/(a00344428.P03.CL.d*a00344428.P03.CL.wn);

%Problema 4
%Identificacion DataID{2}
%6869/(s^2 + 11.9642s + 490.6415)
%a/(bs^2 +cs + d)
a4=6869;
b4=1;
c4=11.9642;
d4=490.6415;

num4 = [a4];
den4 = [b4 c4 d4];
G4 = tf(num4,den4);
%  
% a00344428.P04.num=num4;
% a00344428.P04.den=den4;
% 
% %Open Loop 
% a00344428.P04.OL.yss=ut*a4/(d4); 
% 
% a00344428.P04.OL.wn=sqrt(d4);
% a00344428.P04.OL.d=c4/(2*a00344428.P04.OL.wn);
% a00344428.P04.OL.wd = a00344428.P04.OL.wn*sqrt(1-(a00344428.P04.OL.d)^2);
% a00344428.P04.OL.tss=4/(a00344428.P1OL.d*a00344428.P04.OL.wn);
% 
% %Close Loop
% a00344428.P04.CL.yss=rt*a4*k/(d4+a4*k); 
% 
% a00344428.P04.CL.wn=sqrt(d4 + a4*k);
% a00344428.P04.CL.d=c4/(2*a00344428.P04.CL.wn);
% a00344428.P04.CL.wd=a00344428.P04.CL.wn*sqrt(1-(a00344428.P04.CL.d)^2);
% a00344428.P04.CL.tss=4/(a00344428.P04.CL.d*a00344428.P04.CL.wn);

%Problema 5
Q1 = Qin_1(2);
H1Max = H1max(2);
A01 = A1(2);
R01 = R1(2);

Q2 = Qin_2(2);
H2Max = H2max(2);
A02 = A2(2);
R02 = R2(2);

%1. 
%   H1(s)/Qin(s)= ?
%   From the book we know that: (R1Cs + 1)H(s)=R1Qin(s) where C = A1
%   Therefore: H1(s)/Qin(s) = R1/(R1A1s + 1)


%   H2(s)/ Qin(s) = ?  
%   From the equation above, we obtain H2(s) = R2, however, since now the
%   Qin is the multiplication of the 1st tank and the 2nd tank
%   Qin(s) = (R1A1s + 1)(R2A2s + 1) = (R1A1R2A2)s^2 + (R1A1+R2A2)s + 1
%   Therefore: H2(s)/ Qin(s) = R2/(R1A1R2A2)s^2 + (R1A1+R2A2)s + 1
num52 = [R02];
den52 = [(R01*A01*R02*A02) (R01*A01 + R02*A02) 1]
num51 = [R01];
den51 = [(R01*A01) 1];
G51 = tf(num51, den51);
G52 = tf(num52, den52);
%2 
%   H1(s)/Qin(s)= ?

%   H2(s)/ Qin(s) = ?  


%3
a00344428.P05.H1.yss= Qin1*R01;
a00344428.P05.H1.tss= 5*R01*A01;

%4
a00344428.P05.H2.yss= Qin2*R02; 

a00344428.P05.H2.wn=sqrt(1/(R01*A01*R02*A02));
a00344428.P05.H2.d=(R01*A01 + R02*A02)/(2*R01*A01*R02*A02*a00344428.P05.H2.wn);
a00344428.P05.H2.wd=a00344428.P05.H2.wn*sqrt(1-(a00344428.P05.H2.d)^2);
a00344428.P05.H2.tss=4/(a00344428.P05.H2.d*a00344428.P05.H2.wn);
