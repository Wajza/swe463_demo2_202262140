// 1. What is the difference between `final` and `const`?
// `final` is a variable that can only be set once and is initialized at runtime, while `const` is a compile time constant that must be known at compile time and cannot change.

// 2. Why can `dynamic` change from `String` to `int`?
// `dynamic` is a type that can hold any value and can change its type at runtime. It allows for flexibility in variable assignment, enabling it to hold different types of values during the execution of the program.

//  2. Variable Modifiers — 7 points
void main() {
  final String courseName = 'Mobile App Development';
  const double pi = 3.14159;

  dynamic anything = 'I can be any type!';
  courseName = 'Web Development';
  pi = 3.14;
  print(courseName);
  print(pi);
  print(anything);

  anything = 42;
  print(anything);
}
