function idx = whichTri(xi,yi,tes,xyq)

g = zeros([length(tes) 1]);
for idx = 1:length(tes) 
    rtri = tes(idx,:);
    rtri_points = xyq(rtri,1:2);
    k = convhull([rtri_points;xi,yi]);
    g(idx) = ~any(k==4);
end
idx = find(g);
if isempty(idx)
    idx = NaN;
    return
else


    
end