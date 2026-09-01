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

//  4. Collections — 12 points
void main() {
// fruitsList = ['apples', 'oranges', 'bananas'];
  List<String> fruitsList = [];
  List<String> moreFruits = ['grape', 'kiwi', 'mango'];

  List<String> allFruits = [
    'watermelon',
    if (fruitsList.isNotEmpty) ...fruitsList,
    for (var fruit in moreFruits) fruit,
  ];

  print(allFruits);
}