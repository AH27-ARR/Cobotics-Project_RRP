
clc;
clear all;



syms p th1 th2 alp1 r1 r2
alpha=[0,alp1,0];
d=[0,0,50+p];
t=[th1,th2,0];
r=[r1,r2,0];
A =DenaHart(alpha,d,t,r);



I_th1=pi/2;
I_th2=pi/3;
I_rho=0;
RRP3D(I_th1,I_th2,I_rho)
hold on
A_S=simplify(subs(A,[p,th1,th2,alp1,r1,r2],[I_rho,I_th1,I_th2,-pi/2,45,20]));
x = A_S(1,4);   
y = A_S(2,4);   
z = A_S(3,4);


[tha,thb,rho_C]=IKP_RRP(x,y,z)
C=printing(x,y,z);
    [rows,columns]=size(C);
   %  for i = 1:rows
   %  IKP_M=IKP(C(i,1), C(i,2), C(i,3));
   %  RRP3D(IKP_M(1,1),IKP_M(1,2),IKP_M(1,3));
   % end
    






