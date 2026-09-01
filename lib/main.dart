// 1. What is the difference between `final` and `const`?
// `final` is a variable that can only be set once and is initialized at runtime, while `const` is a compile time constant that must be known at compile time and cannot change.

// 2. Why can `dynamic` change from `String` to `int`?
// `dynamic` is a type that can hold any value and can change its type at runtime. It allows for flexibility in variable assignment, enabling it to hold different types of values during the execution of the program.

// 4. Explain which function uses:
// - positional parameters: greet('Wajd', 'Hello')
// - optional positional parameters: greetWelcome('Wajd', 'Good morning')
// - named parameters: greetAgain(name: 'Wajd', greeting: 'Hello')

//  3. Functions — 12 points
void performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) {
  print(operation(a, b));
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

int multiply(int a, int b) {
  return a * b;
}

void main() {
  performOperation(10, 5, add);
  performOperation(10, 5, subtract);
  performOperation(10, 5, multiply);
}