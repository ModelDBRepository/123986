function matcanon=Definican(vparper, Nneuractifs,indices)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

le=length(indices);
if le>1
    v=zeros(le-1,indices(le)-indices(1));

    for i=1:le-1
        for t=1:round(max(vparper(i),1))
            v(i,t+indices(i)-indices(1))=1;
        end
    end

    Napp=floor(max(Nneuractifs/(le-1),1));
    
    matcanon=zeros(0,size(v,2));
    for i=1:le-2
        for k=1:Napp
            matcanon=[matcanon;v((i),:)];
        end
    end

    reste=max(Nneuractifs,(length(indices)-1))-Napp*(le-2);
    for k=1:reste
        matcanon=[matcanon;v((le-1),:)];
    end
else
    matcanon=zeros(0,0);
end

    