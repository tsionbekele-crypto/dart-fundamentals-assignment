// Task 1: Number Analysis App
// Student Name: Tsion Bekele 
//ID :ATE/1224/15
// Description:
// This program analyzes a list of numbers and finds useful information
// such as the maximum value, minimum value, sum, average, and how many
// negative numbers are in the list.

// Find the largest number in the list
int findMax(List<int> numbers) {

  // check if list is empty
  if (numbers.isEmpty) {
    print("The list is empty.");
    return 0;
  }

  int max = numbers[0];

  for (int n in numbers) {
    if (n > max) {
      max = n;
    }
  }

  return max;
}

// Find the smallest number
int findMin(List<int> numbers) {

  if (numbers.isEmpty) {
    print("The list is empty.");
    return 0;
  }

  int min = numbers[0];

  for (int n in numbers) {
    if (n < min) {
      min = n;
    }
  }

  return min;
}

// Calculate the sum of all numbers
int calculateSum(List<int> numbers) {

  int sum = 0;

  for (int n in numbers) {
    sum += n;
  }

  return sum;
}

// Calculate the average
double calculateAverage(List<int> numbers) {

  if (numbers.isEmpty) {
    return 0;
  }

  int sum = calculateSum(numbers);

  return sum / numbers.length;
}

// BONUS: count how many numbers are negative
int countNegatives(List<int> numbers) {

  int count = 0;

  for (int n in numbers) {
    if (n < 0) {
      count++;
    }
  }

  return count;
}

void main() {

  final numbers = [34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  int max = findMax(numbers);
  int min = findMin(numbers);
  int sum = calculateSum(numbers);
  double avg = calculateAverage(numbers);
  int negatives = countNegatives(numbers);

  print("Number Analysis Results");
  print("=======================");

  print("Numbers: $numbers");
  print("Maximum value: $max");
  print("Minimum value: $min");
  print("Sum: $sum");
  print("Average: $avg");
  print("Negative numbers: $negatives");
}

/*
Conceptual Questions

Q1. What is the difference between a List<int> and a List<dynamic> in Dart? Why is it
usually better to use a typed list like List<int>?

List<int> can only store integers while List<dynamic> can store any
type of value such as strings, numbers, or objects. Using List<int>
is safer because Dart knows exactly what type of data is stored
inside the list and prevents mistakes.

Q2. In your findMax() function, why is it important to initialize your 'running maximum'
variable to the first element of the list rather than to 0 or to a very small number? What
could go wrong with the other approaches?

We start the maximum value with the first element because the list
may contain only negative numbers. If we started with 0, the program
might incorrectly return 0 even though 0 is not in the list.

Q3 Your calculateAverage() function calls calculateSum() internally. What software
design principle does this demonstrate, and why is reusing existing functions preferable
to duplicating code?

This demonstrates code reuse. Instead of repeating the same logic,
calculateAverage() reuses the calculateSum() function. This keeps
the code cleaner and easier to maintain.

Q4. Describe in plain English what the for-in loop syntax does in Dart. How is it different
from a traditional for loop with an index? When would you prefer one over the other?

A for-in loop goes through each element in a collection directly.
A traditional for loop uses an index number to access elements.
The for-in loop is easier when we only need the values.

Q5 5. If someone calls your findMax() function with an empty list, what happens? How
could you modify the function to handle that case safely?

If an empty list is passed to the function, the program would crash
because there would be no first element. We fixed this by checking
if the list is empty before performing calculations.
*/