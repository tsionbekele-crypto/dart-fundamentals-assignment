# Reflection

## QR1

The most difficult concept for me was asynchronous programming.  
At first I did not fully understand how async and await worked.  
When I ran the program and noticed the delay between results, it helped me understand that async functions allow programs to wait for operations without stopping the entire application.

## QR2

If the program needed to work with List<double> instead of List<int>, several parts of the code would need to change.  
The list declaration, function parameters, and return types would need to be updated.  
This showed me that choosing the correct data type early in the design process is important.

## QR3

In a real Flutter application, asynchronous operations are commonly used when fetching data from the internet.  
For example, a weather app might request weather information from an API.  
While the data is loading, the UI would show a loading spinner.  
Once the Future completes, the UI updates with the weather data.

## QR4

Using separate functions such as add(), subtract(), multiply(), and divide() makes the program easier to read and maintain.  
Each function has a clear responsibility.  
However, a single function that accepts an operation parameter could also work.  
Both approaches have advantages depending on the design and complexity of the application.