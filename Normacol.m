function result=normacol(mat)

result=zeros(size(mat,1),0);
for j=1:size(mat,2)
    v=mat(:,j);
	if norm(v)>0
		v=v/norm(v);
	else
		v=zeros(size(mat,1),1);
	end
    result=[result,v];
end