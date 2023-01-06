function zn = interpX(x,y,z,xq,yq)
xyq = [x, y,z];
tes = delaunayn([x,y]);
zn = NaN(size(xq));
for idx = 1:height(xq)
    for idy = 1:width(yq)
        id = whichTri(xq(idx,idy),yq(idx,idy),tes,xyq);
        if isnan(id)
            continue
        else
            rtri = tes(id,:);
            rtrig = xyq(rtri,:);
            zn(idx,idy) = planeEq(rtrig,xq(idx,idy),yq(idx,idy));
        end

    end
end