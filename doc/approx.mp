% hierarchy of approximations to the BEC model
% mpost approx && xetex mpsproof approx.1 && open mpsproof.pdf

% stuff to add:
% what has already been done?
% parameter sets

input boxes

beginfig(1)

vs = 30mm;	% half vertical separation
hs = 50mm;	% horizontal
olap = 3mm;	% line overlap
lablap = 30mm;	% label left shift
labht = 15mm;	% label left up

color junk;
junk = 0.7 white;

boxjoin(a.c = b.c + vs*up);
boxit.bec(btex atomic fields etex);
boxit.qsg(btex \it S-G field etex);

boxjoin()
boxit.cole(btex false vac. etex);
boxit.rotor(btex \it pendulum etex);
boxit.qo(btex \it oscillator etex);
qsg.n = cole.se + vs*up;

boxit.gp(btex G-P equations etex);
boxit.sge(btex \it S-G equation etex);
boxit.kge(btex \it K-G equation etex);
boxit.kza(btex \it Kaptiza etex);
boxit.pnd(btex \it pendulum etex);
boxit.osc(btex \it oscillator etex);

sge.ne = kge.nw; sge.se = kge.sw;
xpart gp.c = xpart sge.e = xpart kza.e;
gp.c = bec.c + hs*right;
ypart qsg.c = ypart sge.c;
ypart cole.s = ypart kza.s;

cole.se = rotor.ne = qo.nw;
cole.sw = rotor.nw;  qo.sw = rotor.se;
kza.se = pnd.ne = osc.nw;
kza.sw = pnd.nw;  osc.sw = pnd.se;

boxit.full(btex experiment etex);
full.c = bec.c +30mm * up;

drawunboxed(full, bec, qsg, cole, rotor, qo, gp, sge, kge, kza, pnd, osc);

draw qsg.nw--qsg.ne dashed evenly withcolor junk;
draw rotor.nw--rotor.ne dashed evenly withcolor junk;
draw qo.nw--qo.ne withcolor junk;
draw cole.ne--rotor.se  withcolor junk;
draw pnd.nw--pnd.ne dashed evenly withcolor junk;
draw osc.nw--osc.ne withcolor junk;
draw kza.ne--pnd.se  withcolor junk;
draw sge.nw--sge.ne dashed evenly withcolor junk;
draw kge.nw--kge.ne withcolor junk;
draw sge.se--sge.ne+olap*up withcolor junk;

label.bot(btex $\emptyset$ etex, pnd.s);
label.bot(btex $\emptyset$ etex, sge.s);
label.bot(btex $\{L_0/\hbar\}$ etex, rotor.s);
label.bot(btex $\{Ng/\nu\}$? etex, gp.s);
label.bot(btex $\{L_0/\hbar\}$\rm ? etex, qsg.s);
label.bot(btex $\{Ng/\nu,\hbar\}$? etex, bec.s);

label.top(btex \bf quantum etex, bec.c + labht*up);
label.bot (btex $\downarrow$ etex, bec.c + labht*up);
label.top(btex \bf classical etex, gp.c + labht*up);
label.bot(btex $\downarrow$ etex, gp.c + labht*up);
label.lft(btex \bf 1 etex, bec.c + lablap*left);
label.rt(btex $\rightarrow$ etex, bec.c + lablap*left);
label.lft(btex \bf 2 etex, qsg.n + lablap*left);
label.rt(btex $\rightarrow$ etex, qsg.n + lablap*left);
label.lft(btex \bf 3 etex, cole.se + lablap*left);
label.rt(btex $\rightarrow$ etex, cole.se + lablap*left);
label.top("?", qsg.n);
label.top("?", sge.n);

endfig

end