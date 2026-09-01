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

// Fill in this table:

// | Dart feature | Line number(s) |
// |---|---|
// | Variables and types | 19, 26, 27 |
// | Null safety | 27, 47 |
// | Function definitions | 3, 9, 22, 29, 37 |
// | Collections | 	45–48 |
// | Class definitions | 5, 16, 25 |
// | Generics | 22, 25 |
// | Positional parameter definitions | 9, 37 |
// | Named parameter definitions | 6, 17 |
// | Private members | 26, 27, 25, 29 (the _MyHomePageState, _counter, _incrementCounter identifiers) |
// | Importing packages | 1 |
// | Inheritance | 5, 16, 25 |

//  Final Exercise — Identify Dart Features in Flutter Code — 5 points
import 'package:flutter/material.dart';                       // 1

void main() => runApp(const MyApp());                       // 3

class MyApp extends StatelessWidget {                       // 5
  const MyApp({super.key});                                 // 6

  @override                                                  // 8
  Widget build(BuildContext context) {                      // 9
    return const MaterialApp(                               // 10
      home: MyHomePage(title: 'Flutter Demo'),              // 11
    );                                                       // 12
  }                                                          // 13
}                                                            // 14

class MyHomePage extends StatefulWidget {                   // 16
  const MyHomePage({super.key, required this.title});       // 17

  final String title;                                       // 19

  @override                                                  // 21
  State<MyHomePage> createState() => _MyHomePageState();    // 22
}                                                            // 23

class _MyHomePageState extends State<MyHomePage> {          // 25
  int _counter = 0;                                         // 26
  String? message;                                          // 27

  void _incrementCounter() {                                // 29
    setState(() {                                           // 30
      _counter++;                                           // 31
      message = 'Button pressed';                           // 32
    });                                                      // 33
  }                                                          // 34

  @override                                                  // 36
  Widget build(BuildContext context) {                      // 37
    return Scaffold(                                        // 38
      appBar: AppBar(                                       // 39
        title: Text(widget.title),                          // 40
      ),                                                     // 41
      body: Center(                                         // 42
        child: Column(                                      // 43
          mainAxisAlignment: MainAxisAlignment.center,      // 44
          children: <Widget>[                               // 45
            Text('Count: $_counter'),                       // 46
            Text(message ?? 'Press the button'),            // 47
          ],                                                 // 48
        ),                                                   // 49
      ),                                                     // 50
      floatingActionButton: FloatingActionButton(           // 51
        onPressed: _incrementCounter,                       // 52
        child: const Icon(Icons.add),                       // 53
      ),                                                     // 54
    );                                                       // 55
  }                                                          // 56
}                                                            // 57