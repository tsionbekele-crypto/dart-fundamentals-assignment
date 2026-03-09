//task 2 : async calculator app
//name : Tsion Bekele
//ID : ATE/1224/15
// Description: An asynchronous calculator app that performs basic arithmetic operations with simulated delays.

import 'dart:async';

class Calculator {
  final String name;

  // BONUS: store history of calculations
  List<String> history = [];

  Calculator(this.name);

  // addition
  double add(double a, double b) {
    return a + b;
  }

  // subtraction
  double subtract(double a, double b) {
    return a - b;
  }

  // multiplication
  double multiply(double a, double b) {
    return a * b;
  }

  // division with error check
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }
    return a / b;
  }

  // async calculation with delay
  Future<double> computeAsync(double a, double b, String op) async {
    double result;

    switch (op) {
      case "add":
        result = add(a, b);
        break;

      case "subtract":
        result = subtract(a, b);
        break;

      case "multiply":
        result = multiply(a, b);
        break;

      case "divide":
        result = divide(a, b);
        break;

      default:
        throw ArgumentError("Unknown operation");
    }

    // simulate delay (1.5 seconds)
    await Future.delayed(Duration(milliseconds: 1500));

    return result;
  }

  // display result and save to history
  Future<void> displayResult(double a, double b, String op) async {
    try {
      final result = await computeAsync(a, b, op);

      String record = "$op($a,$b) = $result";

      history.add(record);

      print(record);
    } catch (e) {
      print("Error: $e");
    }
  }
     

  // BONUS: print calculation history
  void printHistory() {
    print("\nCalculation History:");

    for (var h in history) {
      print(h);
    }
  }
}
 Future<double> computeChained(List<double> values, String op) async {
    double result = values[0];

    for (int i = 1; i < values.length; i++) {
      if (op == "add") {
        result += values[i];
      } else if (op == "multiply") {
        result *= values[i];
      }
    }

    await Future.delayed(Duration(milliseconds: 1500));

    return result;
  }
}

Future<void> main() async {
  final calc = Calculator("MyCalculator");

  print("--- ${calc.name} ---");

  await calc.displayResult(10, 4, "add");
  await calc.displayResult(10, 4, "subtract");
  await calc.displayResult(10, 4, "multiply");
  await calc.displayResult(10, 4, "divide");
  await calc.displayResult(15, 3, "divide");

  // divide by zero test
  await calc.displayResult(10, 0, "divide");

// BONUS: chained calculation
  double chainResult = await calc.computeChained([1, 2, 3, 4], "add");
  print("\nChain Result (add): $chainResult");


  // show history
  calc.printHistory();

  print("\nAll calculations complete.");
}
  //Q6.. What is the difference between a synchronous function and an asynchronous
//function in Dart? In your Calculator class, why is divide() synchronous while
//computeAsync() is asynchronous?

// Synchronous functions run immediately; asynchronous return a Future.
  //     divide() is synchronous; computeAsync() is asynchronous to simulate network delay.


  // Q7.Explain the purpose of the await keyword in Dart. What happens if you forget to use
//await when calling an async function that returns a Future? What does your program print
//instead of the result?

// 'await' pauses execution until the Future resolves.
  //     Without await, main() would print Future objects instead of actual results.


  // Q8. . What is the purpose of the try-catch block in your displayResult() method? What
//would happen if you removed it and then called displayResult(10, 0, 'divide')

//try-catch in displayResult() prevents crashes for divide-by-zero.
  //     Without it, the program would throw an unhandled exception.
  
  // Q9.. Why is it good design to have divide() throw an ArgumentError rather than simply
//returning 0 or printing an error inside the divide() method itself? What principle of
//function design does this reflect?

// Throwing ArgumentError separates error handling from logic; it's better design than printing inside divide().
  //     Reflects the principle: functions should have a single responsibility.
  
  // Q10.. What does the async keyword on main() allow you to do? Could this assignment
//have been written without making main() async? Explain your answer.

// async on main() allows using 'await' inside main().
  //      Without async, we could not await computeAsync(), and results would appear as Future objects.
}