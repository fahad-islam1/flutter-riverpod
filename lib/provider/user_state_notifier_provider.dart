 import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/user_model.dart';

class UserStateNotifier extends StateNotifier<User> {
  UserStateNotifier(): super(
    User(name: "", age: 0)
  );
  
void updateName(String n ){
  state=state.copyWith(name: n);
}
void updateAge(int a ){
  state=state.copyWith(age: a);
}

}