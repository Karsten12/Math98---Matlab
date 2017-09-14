% Math98: Introduction to MATLAB Programming
% Assignment 1
% Karsten Fonseca

%% Problem 1

A=[2*ones(4), zeros(4,3);eye(3,4), diag([1 2 3])] %
% This creates a 7x7 matrix with 4 blocks, 
% The first block is a 4x4 matrix of 2's 
% The second is a 4x3 matrix of 0's
% The third is a 3x4 identity matrix 
% The fourth is a 3x3 matrix with 1, 2, and 3 down the diagonal

A(1:3, 2:5)
% this displays rows 1-3 and columns 2-5 of the matrix A

A(4:end,4)
% this displays the 4th column from rows 4 to the end

A(2,3)=7777
% This changes the value of A[2, 3] to 7777

A(1,:)=8888
% This changes the first row of all columns to 8888
A
% This prints out the matrix A

help sum
% This brings up information about the sum function

help prod
% This brings up information about the product function

sum(A,1)
% This takes the sum of each column and displays it

sum(A)
% This takes the sum of each column and displays it

sum(sum(A))
% This takes the sum of all of A

prod(B)
% Variable B is not defined, so we cannot take the product

clear all
% Clears all the variables from the workspace

x=-2:0.7:3
% This create an array from -2 to 3 stepping 0.7 each time

b=-1:-1:5
% This creates an array from -1 to 5, stepping -1 each time. But since it
% steps in the wrong direction, our vector is empty

x.^3
% This cubes each number from the x vector

x([1.2 4.8 end])
% This does not run, as the subscript indixes must be real, positive
% integers or logicals

x(b)
% Creates a 1x0 row vector

x=x([3:end 1:2])
% This shuffles the vector such the the first two elements are placed at the end.

c=(abs(x)-x)/2
% This performs the function (abs(vectorvalue@index) ? vectorvalue@index)/2 on all values in the vector.

help find;find(x<0)
% This brings up information about about the find function; finds the indices in the vector where the value is less than 0.
x<0
% This creates a 1x8 logical array that replaces the indices with a 1 if less than 0 and a 0 otherwise.

x(x<0)
% This displays the values of the vectors that are less than zero in a filtered vector

sqrt(-3:2)
% Performs the square root function for integers from -3 to 2 and displays them in a vector

whos ans
% This displays statistics about ans: size, name, bytes, class, and attributes

format long
% Changes the format of ans to long rather than double

i*i*pi
% Multiplies i * i * pi = -1 * pi

z=0.3-i*0.1
% Performs 0.3 ? 0.1i assigns this value to z. 

i=-3;z=0.3-i*0.1
%  Assigns -3 to i, then performs 0.3 - 0.1 * i = 0.3 ? (-0.3) = 0.6

%% Problem 2

%% Problem 3
