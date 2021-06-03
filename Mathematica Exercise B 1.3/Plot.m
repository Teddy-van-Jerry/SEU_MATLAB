clear;clc;

x = linspace(-1,1,50);
y = x;
[X,Y] = meshgrid(x,y);

for k = -6 : 5
    
    Z = X.^2 + Y.^2 + k .* X .* Y;

    Fig = mesh(X,Y,Z);
    colorbar;
    
    k_ = '';
    if (k < 0)
        k_ = [int2str(k), 'xy'];
    else
        if (k ~= 0)
            k_ = ['+', int2str(k), 'xy'];
        end
    end

    L(1) = xlabel('x');
    L(2) = ylabel('$y$', 'interpreter', 'latex');
    L(3) = zlabel('$z$', 'interpreter', 'latex', 'FontSize',18);
    L(4) = title(['$z = x^2 + y^2 ', k_, '$'], 'interpreter', 'latex', 'FontWeight', 'bold');
    
    saveas(Fig,['1.3-', int2str(k + 7), '.png']);
end