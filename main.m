% Add paths to function files
 addpath(pwd);

% Matrix Multiplication
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
disp("Matrix Multiplication:");
disp(matrix_multiplication(A, B));

% Bisection Method
func = @(x) x^3 - x - 2;
root = bisection_method(func, 1, 2);
disp("Bisection Method Root:");
disp(root);

% Sorting Algorithms
arr = [5, 3, 8, 4, 2];
disp("Bubble Sort:");
disp(bubble_sort(arr));

disp("Merge Sort:");
disp(merge_sort(arr));

disp("Quick Sort:");
disp(quicksort(arr));

% Binary Search
sorted_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
target = 5;
disp("Binary Search Index:");
disp(binary_search(sorted_arr, target));

% Factorial
num = 5;
disp("Factorial:");
disp(factorial_recursive(num));

% Palindrome Check
str = "A man, a plan, a canal, Panama";
disp("Is Palindrome:");
disp(is_palindrome(str));

% Mean, Median, Mode
data = [1, 2, 2, 3, 4, 4, 4, 5, 6];
disp("Mean:");
disp(mean(data));

disp("Median:");
disp(median(data));

disp("Mode:");
disp(mode(data));
