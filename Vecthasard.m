function vectconnect=Vecthasard( Nneur, Kr,Vr,choixhasard)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%random input vector to the network

global seedscalvect 
global memoirej nappelbontir

x=clock;
x=100*(x(6));
rand('seed',x)
if choixhasard==1
     seedscalvect=rand('seed');
end
rand('seed',seedscalvect)

vectconnect=zeros(1,Nneur);
memoirej=[0];
for i=1:Kr
    nappelbontir=0;
    i=Nbontirage(Nneur);
    vectconnect(i)=vectconnect(i)+Vr;
end

