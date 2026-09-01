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

//  7. Null Safety and Generics — 12 points
class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

abstract class Post {
  final String author;

  Post(this.author);

  void render();
}

class TextPost extends Post {
  final String text;

  TextPost(String author, this.text) : super(author);

  @override
  void render() {
    print('Text post by $author: "$text"');
  }
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? errorMessage;

  ApiResponse(this.success, {this.data, this.errorMessage});
}

void main() {
  final userResponse = ApiResponse<User>(
    true,
    data: User('khalid', 'khalid@example.com'),
  );

  print(userResponse.data?.username);

  final postResponse = ApiResponse<Post>(
    true,
    data: TextPost('Turki', 'Flutter is awesome'),
  );

  if (postResponse.success) {
    postResponse.data?.render();
  } else {
    print('Response failed: ${postResponse.errorMessage}');
  }

  final errorResponse = ApiResponse<User>(
    false,
    errorMessage: 'Unable to load user',
  );

  print(errorResponse.errorMessage);

  // Student task: ApiResponse<int>
  final intResponse = ApiResponse<int>(
    true,
    data: 200,
  );

  print(intResponse.data);
}