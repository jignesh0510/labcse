% Given xdata and ydata points
xdata = [0,2,4,6,9,11,12,15,17,19];
ydata = [5,6,7,6,9,8,8,10,12,12];

% Linear regression
linearFit = fit(xdata', ydata', 'poly1');

% Polynomial fit with 2nd degree
poly2Fit = fit(xdata', ydata', 'poly2');

% Evaluate goodness of fits
linearFitGoodness = goodnessOfFit(ydata, linearFit(xdata), 'sse');
poly2FitGoodness = goodnessOfFit(ydata, poly2Fit(xdata), 'sse');

% Display results
disp('Linear Fit:');
disp(linearFit);
disp(['Goodness of Fit (Linear): ', num2str(linearFitGoodness)]);
disp(' ');

disp('2nd Degree Polynomial Fit:');
disp(poly2Fit);
disp(['Goodness of Fit (2nd Degree Polynomial): ', num2str(poly2FitGoodness)]);