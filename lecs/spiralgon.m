function V =  spiralgon(m, n, d_angle)
% SPRIALGON plots spiraling regular m-gons
% input:   m = the number of vertices
%          n = the number of regular m-gon
%          d_angle = the degree angle between successive m-gons
%          (can be positive or negative)
%          rotate = the degree angle by which all polygons are rotated
% output:  V = the vertices of the outermost m-gon
    rotate = 0;
    shift = [0 0];
    th = linspace(0, 360, m+1) + rotate;
    V = [cosd(th);
         sind(th)];
    C = colormap(hsv(n));
    scale = sind(90 + 180/m - abs(d_angle))/...
            sind(90 - 180/m);
    R = [cosd(d_angle) -sind(d_angle);
         sind(d_angle) cosd(d_angle)];
    % hold off
    for i = 1:n
        if i > 1
            V = scale*R*V;
        end
        plot(V(1,:)+shift(1), V(2,:)+shift(2), 'Color', C(i,:))
        hold on
    end
    set(gcf, 'Color', 'w')
    axis equal, axis off

end

