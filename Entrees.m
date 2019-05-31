function [TS,N,Npn,J,TO,I,R]=Entrees

%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.


global Nneur NPN Poids Rent Init Temps Retards

N=Nneur;
Npn=NPN;
% TS simulation time
TS=Temps;
% weigth of connection from neuron j to neuron i
J=Poids;

% TO delay matrix 
TO=Retards;					
tomax=max(max(TO));

I=Init; 

if size(Init,2)~=tomax
    disp('Problem with the Init vector');
    return
end
% Input vector
R=zeros(N,TS);
R1=Rent';
  for k= 1+tomax:TS+tomax
     R(:,k)=R1;
  end
clear k;
