function Evol(epsilon,choixhasard)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

global Matpn Matln 
global changex changin 

[TS,N,NPN,J,TO,I,R]=Entrees;
tomax=max(max(TO));
[H,Proba, Matpn, Matln, changex changin]=Evolution(TS,N,NPN,J,TO,I,R,epsilon,choixhasard);     

