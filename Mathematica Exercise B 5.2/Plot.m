%#ok<*EZPLT>

% fig1
f1 = figure('Name', 'fig1');
set(gcf, 'Position', [50 50 600 550]);
ezplot('x^4+y^4=16', [-2.5 2.5 -2.5 2.5]);
title('$x^4+y^4=16$', 'Interpreter', 'latex');
set(findobj(get(gca, 'Children'), 'LineWidth', 0.5), 'LineWidth', 2);
axis on
grid on

% fig2
f2 = figure('Name', 'fig2');
set(gcf, 'Position', [50 50 600 550]);
ezplot('x*y=exp(x+y)', [-4.5 0.5 -4.5 0.5]);
title('$xy=e^{x+y}$', 'Interpreter', 'latex');
set(findobj(get(gca, 'Children'), 'LineWidth', 0.5), 'LineWidth', 2);
axis on
grid on

% save figure as pdf
saveas(f1, 'fig1.pdf');
saveas(f2, 'fig2.pdf');