function Fabrican (p, P, k, T)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%Canonical activity matrix
%p = number of consecutive time steps
%P = number of update time steps in each time bin
%k = number of neurons simultaneously active at each time bin
%T = number of time bins

global matcan indican

indices=ones(1);
vparper=zeros(0);
newind=1;
for i=1:T
    newind=newind+P;
    vparper=[vparper,p];                       
    indices=[indices,newind];               
end
indican=indices;
Nneuractifs=k*T;
matcan=Definican(vparper,Nneuractifs, indices);

