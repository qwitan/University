% Newton's Method One-Dimensional
clc; clear; close; % good practice to clear workspace and command window
format long;

%% (f,fd,epsilon,tol)
f = @(x) x.^3 - 4*x.^2 + 1;  %function
fd = @(x) 3*x.^2 - 8*x ; %derivative 

%% should be changed for given function
t = -5:0.01:5; % lower bound; x-axis interval; upper bound
l = f(t);

%% pick and initial x value and tolerance
epsilon = 0.5;
tol = 1e-6;

% use the newton method with a tolerance or error check 
x = epsilon;
y = f(x);
iterations = 0;
guesses = (epsilon);

 while abs(y) > tol % do while y is greater than the tolerance
        iterations = iterations + 1;
        x = x - f(x)/fd(x); %iteration to get to the next xn
        y = f(x); %looks at the prior last value of f(x)   
        guesses = [guesses,x];
    end

display("Number of Iterations of Newton's Method: " + (iterations))
display(x);
display(y);

figure
plot (t,l);
hold on;
%title("Newton's Method");

eqn = func2str(f);%changes to a char array
eqn1 = eqn(5:end);%removes the '@(x) handle
eqn2 = replace(eqn1,'.',''); %removes the . used for multiplication
holder = "Newton's Method: $f(x)=" + string(eqn2+ "$");
title(holder,'Interpreter','latex');

xline(0)  %x-axis
yline(0)  %y-axis
plot(guesses, f(guesses), 'ro');
hold off;

%% Function ex.one
% func = @(x) x.^3 - 5;
% deriv = @(x) 3*x^2;
% newton(func,deriv,1,1e-6)
%% Function ex.two
% func = @(x) x.^2 - 2;
% deriv = @(x) 2*x;
% newton(func,deriv,2,1e-6)