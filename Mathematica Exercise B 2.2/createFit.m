function [fitresult, gof] = createFit(Tx, Ty)
%% Fit: 'Fitting'.
[xData, yData] = prepareCurveData( Tx, Ty );

% Set up fittype and options.
ft = fittype( 'poly2' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Fitting' );
h = plot( fitresult, xData, yData, 'x' );
legend( h, 'Ty vs. Tx', 'Fitting', 'Location', 'NorthEast', 'Interpreter', 'none' );
title( 'Fitting Result for Exercise 2.2' );

% Label axes
xlabel( 'Tx', 'Interpreter', 'none' );
ylabel( 'Ty', 'Interpreter', 'none' );
grid on