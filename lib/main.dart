// 1. What is the difference between `final` and `const`?
// `final` is a variable that can only be set once and is initialized at runtime, while `const` is a compile time constant that must be known at compile time and cannot change.

// 2. Why can `dynamic` change from `String` to `int`?
// `dynamic` is a type that can hold any value and can change its type at runtime. It allows for flexibility in variable assignment, enabling it to hold different types of values during the execution of the program.

// 4. Explain which function uses:
// - positional parameters: greet('Wajd', 'Hello')
// - optional positional parameters: greetWelcome('Wajd', 'Good morning')
// - named parameters: greetAgain(name: 'Wajd', greeting: 'Hello')

// 4. Run the program and explain why the duplicate set item is not stored twice.
// Sets in Dart automatically remove duplicate items, so even if 'flutter' is added twice to the set, it will only be stored once.

// 4. Explain what the spread operator `...` does.
// The spread operator `...` is used to expand a collection into individual elements. It allows you to include all elements of one collection into another collection.

// Explain why `GreetingPerson` can access `_firstName` and `_lastName` even though they start with `_`.
// `GreetingPerson` is in the same library as `Person`, so it has access to the private members of `Person`.

// Run the program and write the order in which `[1]` through `[6]` are printed.
// The order of the printed statements will be:
// [1] Using async/await
// [2] Fetching data...
// [3] Result: Fetched Data
// [4] Using .then()
// [5] Program continues after .then() call
// [6] .then() result: Fetched Data

//  8. Asynchronous Programming — 11 points
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print('Start counting...');

  await for (final count in countStream(3)) {
    print(count);
  }

  print('Done');
}