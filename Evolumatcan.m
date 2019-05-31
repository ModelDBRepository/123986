function NED=Evolumatcan(matcan,indican)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

ref=size(matcan,1)-sum(matcan(:,1));        %ref=N-k
matcanmoy=Moytemp(matcan,indican);
matcannorm=Normacol(matcanmoy);
distref=Dist(matcannorm);

matsuivi=matcan;
for k=1:ref
    matcan=matsuivi;
    for i=2:size(matcan,1)
        for j=1:size(matcan,2)
            if matcan(i-1,j)==1
               matsuivi(i,j)=1;
            end
        end
    end
    for j=1:size(matcan,2)
        if matcan(size(matcan,1),j)==1
            matsuivi(1,j)=1;
        end
    end
    matsuivmoy=Moytemp(matsuivi,indican);
    matsuivnorm=Normacol(matsuivmoy);
    distancevert=Dist(matsuivnorm);
    NED(k)=distancevert/distref;
end
alpha=[1:ref]/ref;
plot(alpha,NED) 
