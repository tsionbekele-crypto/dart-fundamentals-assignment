

// find largest number
int findMax(List<int> numbers) {
  int max = numbers[0];

  for (int n in numbers) {
    if (n > max) {
      max = n;
    }
  }

  return max;
}

// find smallest number
int findMin(List<int> numbers) {
  int min = numbers[0];

  for (int n in numbers) {
    if (n < min) {
      min = n;
    }
  }

  return min;
}

// add all numbers
int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int n in numbers) {
    sum += n;
  }

  return sum;
}

// find average
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

void main() {
  final numbers = [34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  int max = findMax(numbers);
  int min = findMin(numbers);
  int sum = calculateSum(numbers);
  double avg = calculateAverage(numbers);

  print("Number Analysis Results");
  print("=======================");
  print("Numbers: $numbers");
  print("Max: $max");
  print("Min: $min");
  print("Sum: $sum");
  print("Average: $avg");
}