import 'package:flutter/material.dart';
import 'package:riverpod_practice_project/user_model.dart';

class UserChangeNotiierProvider extends ChangeNotifier{

   User user=  User(name: "", age:0);
  
void updateName(String n ){
  user=user.copyWith(name: n);
  notifyListeners();
}
void updateAge(int a ){
  user=user.copyWith(age: a);
  notifyListeners();

}
}