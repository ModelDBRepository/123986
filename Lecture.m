function resultats=lecture0909(nomfichier)

fid=fopen(nomfichier,'r');
fgets(fid);
vect_result=fgets(fid);
vect_result_num=str2num(vect_result);
resultats=vect_result_num;
%compteur=1

while sum(size(vect_result))>2
  vect_result=fgets(fid);
  %pause
  if sum(size(vect_result))>2
      %compteur=compteur+1
      vect_result_num=str2num(vect_result);
      resultats=[resultats;vect_result_num];
  end;
end;

fclose(fid);
