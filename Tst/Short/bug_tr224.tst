LIB "tst.lib";
tst_init();

ring R = (2),(b_2_4,b_2_5,b_4_17,c_4_18,a_1_0,b_1_1,c_1_2,b_3_9,b_3_10),(M(2,2,4,4,1,1,1,3,3,0,0,0,-1,0,0,-1,0,0,0,0,0,0,-1,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,-1,0),C);
R;
option(prot);
ideal I = std(ideal(a_1_0^2,a_1_0*b_1_1,b_2_4*a_1_0,b_2_5*a_1_0,a_1_0*b_3_9,a_1_0*b_3_10,b_2_4*b_1_1^2+b_2_4^2,b_1_1*b_3_9+b_2_4*b_2_5,b_4_17*a_1_0,b_2_4*b_3_9+b_2_4*b_2_5*b_1_1,b_4_17*b_1_1+b_2_5^2*b_1_1+b_2_4*b_3_10,b_2_4*b_1_1*b_3_10+b_2_4*b_4_17+b_2_4*b_2_5^2,b_3_9^2+b_2_4*b_2_5^2,b_3_9*b_3_10+b_2_5*b_4_17+b_2_5^3,b_3_10^2+b_2_5*b_1_1*b_3_10+b_2_5^3+b_2_4*b_4_17+b_2_4*b_2_5^2+c_4_18*b_1_1^2,b_4_17*b_3_9+b_2_5^2*b_3_9+b_2_4*b_2_5*b_3_10,b_4_17*b_3_10+b_2_5^2*b_3_10+b_2_5^2*b_3_9+b_2_4*b_2_5*b_3_10+b_2_4^2*b_3_10+b_2_4*c_4_18*b_1_1,b_4_17^2+b_2_5^4+b_2_4*b_2_5*b_4_17+b_2_4^2*b_4_17+b_2_4^2*b_2_5^2+b_2_4^2*c_4_18));
ideal P = b_1_1^2 + b_2_5, b_1_1, c_4_18, c_1_2;
size(NF(std(I,P),std(I,std(P))));
size(NF(std(I,std(P)),std(I,P)));

matrix(std(I,P))==matrix(std(I,std(P)));
dim(std(I,P));
dim(std(I,std(P)));
option(redSB);
matrix(std(I,P))==matrix(std(I,std(P)));

tst_status(1);$
