class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

//  copyWith method is used to create a new object with the same properties as the current object, but with some of the properties changed.
  User copyWith({String? name, int? age}) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}