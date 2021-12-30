% Newton's Method: Multidimensional
clc; clear; close; % good practice to clear workspace and command window
format long;

%% given robot armlengths a1 = 5, a2 = 3
a1 = 5;
a2 = 3;

%% given epsilon = 10^(-5)
epsilon = 1e-5;

%% given point P(p_x|p_y) = P(-5|4)
point = [-5;4];

%% given functions
%f_1 = 5*cos(phi1) + 3*cos(phi2) + 5;
%f_2 = 5*sin(phi1) + 3*sin(phi2) - 4;

figure
phi1 = -10:0.5:10;
phi2 = -10:0.5:10;
[xx,yy] = meshgrid(phi1,phi2);
zz = a(xx,yy);
s = mesh(xx,yy,zz,'FaceAlpha','0.5'); % Creates a semitransparent mesh surface
s.FaceColor = 'interp'; % interpolated coloring to the face of the mesh plot
colorbar % adds the color bar
grid on;
line([0,0], ylim, 'Color', 'r'); % Draw line for Y axis.
line(xlim, [0,0], 'Color', 'r'); % Draw line for X axis.

%% starting guess
phi = [-1;2];

%% information
iterations = 0;

while 1
%Given functions with given point
  f = [
      a1 * cos(phi(1)) + a2 * cos(phi(2)) - point(1)
      a1 * sin(phi(1)) + a2 * sin(phi(2)) - point(2)
      ];
% Jacobian Matrix 2x2
  J = [
      a1 * -sin(phi(1)), + a2 * -sin(phi(2))
      a1 * cos(phi(1)), + a2 * cos(phi(2))
      ] ^ (-1);
  
  % Iterations for Newton's multidimentional method
  var_new  = phi - J * f;
  
  % given |vector x_{i+1} - vector x_i| < epsilon
  if ( ...
          abs(sqrt(var_new(1) ^ 2 + var_new(2) ^ 2) - sqrt(phi(1)^2 + phi(2)^2)) ...
          < epsilon ...
     )
      break %ends the if statement if it is less than epsilon
  end
  iterations = iterations + 1;
  phi = var_new; %Results are assigned to the phi vector (phi1|phi2)
end
display("Number of Iterations: " + (iterations))
fprintf('The solution for Phi1:');
display (phi(1));
fprintf('The solution for Phi2:');
display (phi(2));

%% For graphing purposes
function z = a(phi1,phi2)
%z = 5*cos(phi1) + 3*cos(phi2) + 5;
z = 5*sin(phi1) + 3*sin(phi2) - 4;
end

