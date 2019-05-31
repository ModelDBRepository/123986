function dist=Dist(mat)
% calcul de la distance euclidienne entre les colonnes de la matrice mat
% qui doit �tre telle que chaque colonne est de norme 1.
%appliqu� � une matrice canonique, ce calcul doit fournir une matrice
%euclid remplie de valeurs sqrt(2) sauf des z�ros sur la diagonale.
%attention la valeur moyenne de sortie de ce progamme est calcul�e sur
%toute la matrice(diagonale comprise=0), ce qui fournit une valeur
%inf�rieure � sqrt(2) pour la matrice canonique (apr�s utilisation de
%NSmoytempcycle et normacol)
%revue 09/09
s=size(mat,2);
euclid=zeros(s);
for i=1:s-1
    for j=i+1:s
        euclid(i,j)=norm(mat(:,i)-mat(:,j));
        euclid(j,i)=euclid(i,j);
    end
end
dist=mean(mean(euclid));
