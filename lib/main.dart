// 1. What is the difference between `final` and `const`?
// `final` is a variable that can only be set once and is initialized at runtime, while `const` is a compile time constant that must be known at compile time and cannot change.

// 2. Why can `dynamic` change from `String` to `int`?
// `dynamic` is a type that can hold any value and can change its type at runtime. It allows for flexibility in variable assignment, enabling it to hold different types of values during the execution of the program.

// 4. Explain which function uses:
// - positional parameters: greet('Wajd', 'Hello')
// - optional positional parameters: greetWelcome('Wajd', 'Good morning')
// - named parameters: greetAgain(name: 'Wajd', greeting: 'Hello')

//  3. Functions — 12 points
void greet(String name, String greeting) {
  print('$greeting, $name!');
}

void greetWelcome(String name, [String greeting = 'Welcome']) {
  print('$greeting, $name!');
}

void greetAgain({required String name, String? greeting}) {
  print('${greeting ?? 'Hi'}, $name!');
}

void main() {
  greet('Wajd', 'Hello');
  greetWelcome('Wajd');
  greetWelcome('Wajd', 'Good morning');
  greetAgain(name: 'Wajd', greeting: 'Hello');
  greetAgain(name: 'Wajd');


  greet('Wajd', 'Hey');
  greetWelcome('Wajd', 'Good evening');
  greetAgain(name: 'Wajd', greeting: 'Hello again');
}