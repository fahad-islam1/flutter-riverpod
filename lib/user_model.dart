class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
// copymethod 
  User copyWith({String? name, int? age}) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
