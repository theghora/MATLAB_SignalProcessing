
function[lambda]= A3(R,C)

% CH2MP1.m : Chapter 2, MATLAB Program 1
% Script M-file determines characteristic roots of op-amp circuit.
% Set component values:
% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% Determine characteristic roots:
lambda = roots(A);
poly(lambda);
disp(poly(lambda));
end