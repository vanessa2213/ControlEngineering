G = tf ([4 -37],[1 -16.833 -15 133.333]);
sys = ss(G);
 k = acker(sys.A,sys.B, [-3 -4 -5]);
A2 = sys.a-sys.b*k;
systemCL =ss (A2 , sys.B,sys.C,0);
tf(systemCL) ;
