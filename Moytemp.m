function mattempmoy=Moytemp(Mat, indice) 

%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
    mattempmoy=zeros(size(Mat,1),0);
for k=2:length(indice)
    matinter=Mat(:,indice(k-1):indice(k)-1);
    vectinter=sum(matinter,2);
    mattempmoy=[mattempmoy, vectinter];
end
