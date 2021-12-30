% Romberg's Algorithm 
% Find the integral of f=exp 
% estimate the area under the curve from [a,b] = [0,2] and n = 5
 
 clc; clear; %% good practice to clear workspace and command window

 f = @(x) exp(x); %% declaration construct of the given function for variable (x) to be worked on.
 a = 0; %% this is the lower limit of the function
 b = 2; %% this is the upper limit of the function
 n = 5; %% represents the number of times the trapezoidal rule is computed
  
 h = b-a; %% used to calculate the width 
 dx = (h)/n; %% width of each sub interval 
 fprintf('Width of each subinterval:');
disp(dx); %% displays the width
 ri = zeros(2,n+1); %% The matrix is equal to the num=2 of rows and the num (n+1) of columns
 ri(1,1) = (f(a)+f(b))/2*h; %% romberg integral(in this case the trapezoidal rule with n=1
fprintf('Romberg integration:'); %% same as display, used to remove the new line
fprintf('\n %7.4f\n', ri(1,1)); %% uses the format string to create 7 empty spaces and fills the empty spaces from right to left. 4 decimal places
                                 %% prints the first integral 
 for i = 2:n %% every integer between 2 and n(5) will be evaluated for i
    sum = 0; %% set the sum to zero to prevent any unexpected behavior
    
    for k = 1:2^(i-2)
       sum = sum+f(a+(k-0.5)*h);
    end
    ri(2,1) = (ri(1,1)+h*sum)/2; %% this gives us half the size (f(a+h/2))) and is needed yto calculate the interior
   
    for j = 2:i %% every integer between 2 and i will be evaluated for j
       l = 2^(2*(j-1));
       ri(2,j) = ri(2,j-1)+(ri(2,j-1)-ri(1,j-1))/(l-1); %% used to calculate the next columns 
    end

    for k = 1:i %% every integer between 2 and i will be evaluated for k
fprintf(' %7.4f',ri(2,k)); %prints the next integers on the first column based on i in k. 
    
    end
  
fprintf('\n'); %% needed for each iteration 
    h = h/2; %% the width is halved for the following
    for j = 1:i %% every integer between 1 and i will be evaluated for j
       ri(1,j) = ri(2,j); %% needed to set ri (1,)
    end
    
 end 

 
fprintf('\nIntegration Value is equal to: ');
fprintf('%7.4f',ri(2,5)); %prints the last given integration value
