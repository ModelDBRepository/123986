function j=Nbontirage(N)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
% random generation of 1 element among N, without repetition

global memoirej nappelbontir

nappelbontir=nappelbontir+1;

j=zeros(0);
if nappelbontir<N+1
    jessai=ceil(N*rand);
    if sum(memoirej==jessai)==0
        j=jessai;
        memoirej=[memoirej,j];
    else
        j=Nbontirage(N);
    end
end
    