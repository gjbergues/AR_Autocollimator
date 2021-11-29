function [fitresult, gof] = createFit(xx, yy, III)
%CREATEFIT(XX,YY,III)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : xx
%      Y Input : yy
%      Z Output: III
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 30-Apr-2013 11:16:32


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( xx, yy, III );

% Set up fittype and options.
ft = fittype( 'poly22' );
opts = fitoptions( ft );
opts.Lower = [-Inf -Inf -Inf -Inf -Inf -Inf];
opts.Robust = 'Bisquare';
opts.Upper = [Inf Inf Inf Inf Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, opts );
