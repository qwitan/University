# Calculus 2
Matlab Assignments

_________________________________________________________________________________________________________________________________________________________

#Romberg-Algorithm Assignment
-----------------------------
Romberg-Integration-Algorithm as defined in Theorem 2.14. 4.) in part 1 of the script

Please read: https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/13Integration/romberg/complete.html

------------

The function f, an interval [a,b] and an integer n are given. f = exp and [a,b] = [0,2] and n = 5

- For an integer k in 1..n calculate

        p = 2^(k-1)

        R_0(k) = (b-a)/(2*p) * (f(a) + f(b) + 2*Sum_{i=1}^{p-1} f(a+i*(b-a)/p))

- Calculate for the integer i = 1 ..n-1 (outer loop) and k = i+1..n  (inner loop)

        R_i(k) = (4^i * R_{i-1}(k) - R_{i-1}(k-1))/(4^i-1) 

- The best approximation for the integral of f over the interval [a,b] is the last value you calculated

_________________________________________________________________________________________________________________________________________________________

#Multidimensional Newton Method Assignment
-------------------------------------------
one-dimensional version:

- solve:
          
        f(x) = 0

- with a starting value x_0 the iteration: 

        x_{i+1} = x_i - f(x_i)/f'(x_i)    ( i = 0,1,2,... )

is performed until:

        |x_{i+1} - x_i| < epsilon

given an epsilon

------------

multi-dimensional version:

        f(vector x) = ( f_1(x_1,..x_n), f_2(x_1,..x_n), ... f_n(x_1,..x_n) )'  = (0,0, .. 0)' = nullvector

( ' is the transposed vector - we use column vectors in this example)

------------

        J (vector x)

Jacobian matrix: https://en.wikipedia.org/wiki/Jacobian_matrix_and_determinant 

of the partial derivates of the component functions f_k of f with respect to the component x_l of the vector x

- With a starting vector x_0 the iteration: 

        vector x_{i+1} = vector x_i - J^{-1} (vector x_i) * f(vector x_i))    ( i = 0,1,2,... )
        
- is performed until:

        |vector x_{i+1} - vector x_i| < epsilon
        
given an epsilon

------------

- For a two arm robot with armlengths:

        a1 = 5, a2 = 3  
       
- given point:
        
        P(p_x|p_y): P(-5|4) 

- the equations

        f(phi1,phi2)' = (a1*cos(phi1)+a2*cos(phi2), a1*sin(phi1)+a2*sin(phi2))'  - (p_x,p_y)' = (0,0)'

Solved so that the robot is placed at P.
epsilon = 10^(-5)

------------

solution:  phi1 and phi2

_________________________________________________________________________________________________________________________________________________________

#Mandelbrot Set Assignment
--------------------------
Mandelbrot Set: https://en.wikipedia.org/wiki/Mandelbrot_set

is a fractal curve: https://en.wikipedia.org/wiki/Fractal_curve

the dimension of the border is not a natural number

------------

With an initial value: 
      
        (*)    x_{0}(c) = 0;

for some (grid) point c in the complex numbers the iteration:
       
        (**)   x_{i+1}(c) = x_{i}(c)^2 + c   (i = 0, 1, 2, ... n-1)

executed n times

------------

Part 1: Black and white plot

- Produce a grid in the complex plane with: -1.5 <= real(c) <= 0.5  and -1 <= imag(c) <= 1
-  Init a zero-matrix x with the same dimensions as the grid (*)
- Execute (**) in a loop with n=256 parallel for all grid points (matrix-dot-operation) at the same time
- After this loop the color-number of a grid point c is assigned: 
        
        0 if | x_{256}(c) | <=2
        
        1 if | x_{256}(c) | > 2

black and white plot of the Mandelbrot set using image and colormap(gray(2))

------------

Part 2: Color plot

- Instead of assigning the color at the end of the loop (as in part 1) decide during the loop if: | x_{256}(c) | > 2
  for the first time. The index of the iteration is then the color-number of the grid point c

color plot of the Mandelbrot set using image and colormap(hsv(256))

_________________________________________________________________________________________________________________________________________________________
