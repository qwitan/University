% Newton's Method: Multidimensional
clc; clear; close; % good practice to clear workspace and command window
format long;

syms phi1 phi2 %define our set of symbolic variables 

%% given robot armlengths a1 = 5, a2 = 3
a1 = 5;
a2 = 3;

%% given epsilon = 10^(-5)
epsilon = 1e-5;

%% given point P(p_x|p_y) = P(-5|4)
point = [-5;4];

%% graph for functions
figure
x = -10:0.5:10;
y = -10:0.5:10;
[xx,yy] = meshgrid(x,y);
zz = a(xx,yy);

%% design
s = mesh(xx,yy,zz,'FaceAlpha','0.5'); % Creates a semitransparent mesh surface
s.FaceColor = 'interp'; % interpolated coloring to the face of the mesh plot
colorbar % adds the color bar
grid on;
line([0,0], ylim, 'Color', 'r'); % Draw line for Y axis.
line(xlim, [0,0], 'Color', 'r'); % Draw line for X axis.

%% given functions
f_1 = a1*cos(phi1) + a2*cos(phi2) - point(1);
f_2 = a1*sin(phi1) + a2*sin(phi2) - point(2);

f = [f_1;f_2]; %contructs a function matrix containing our functions

var = [phi1;phi2]; % contructs a variable matrix containing our variables 

% jacobian matrix 
for i = 1 : size(f) %f sub i
    for j = 1 : size(var) % iterate over the columns % when the column changes so does phi1
        J(i,j) = diff(f(i),var(j)); % derivative of f of i with respect to the j variable
    end
end
%J %prints J matrix for reference


deltax(var) = inv(J) * f; %correction factor matrix
iterations = 5;
phi = [-1;2]; % x|y initial


%while 1
for z = 1 : iterations
var_new = phi - deltax(phi(1),phi(2)); % - function of two variables
phi = var_new; %current value into the initial value

if ( abs(sqrt(var_new(1) ^ 2 + var_new(2) ^ 2) - ...
          sqrt(phi(1)^2 + phi(2)^2)) > epsilon)
      break;
      
end
var_new = vpa(var_new);
end
display("Number of Iterations: " + (iterations))
fprintf('The solution for Phi1:');
var_new(1)
fprintf('The solution for Phi2:');
var_new(2)

%% For graphing purposes
function z = a(x,y)
%z = 5*cos(x) + 3*cos(y) + 5;
z = 5*sin(x) + 3*sin(y) - 4;
end