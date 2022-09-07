# Created by Octave 6.4.0, Wed Sep 07 09:36:31 2022 PST <engg@emman-arfic>

w=1e-6;
gmoverid = load("-ascii","gmoverid.txt")(:,2);
id = load("-ascii","id.txt")(:,2);
vgs = load("-ascii","vgs.txt")(:,2)
ft = load("-ascii","ft.txt")(:,2)
gmro = load("-ascii","gmro.txt")(:,2)

subplot(2,2,1);
plot(vgs,gmoverid) 
grid on 
axis("tight")
title("transconductance efficiency")
xlabel('vgs')
ylabel('g_m/i_d')

subplot(2,2,2);
plot(gmoverid,ft) 
grid on 
axis("tight")
title("transit frequency")
xlabel('g_m/i_d')
ylabel('ft')

subplot(2,2,3);
plot(gmoverid,gmro) 
grid on 
axis("tight")
title("intrinsic gain")
xlabel('g_m/i_d')
ylabel('g_m/g_{ds}')

subplot(2,2,4);
plot(gmoverid,id/w) 
grid on 
axis("tight")
title("current per unit width")
xlabel('g_m/i_d')
ylabel('i_d/w')