import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class UserChangenotifierProvider extends ConsumerStatefulWidget {
  const UserChangenotifierProvider({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StateNotifierProviderScreenState();
}

class _StateNotifierProviderScreenState extends ConsumerState<UserChangenotifierProvider> {

  updateUSerName(namevalue){
    ref.read(userChangeNotifierprovider).updateName(namevalue);
  }

  updateUSerAge(age){
    ref.read(userChangeNotifierprovider).updateAge(int.parse(age));
  }

  @override
  Widget build(BuildContext context) {
    final user=ref.watch(userChangeNotifierprovider).user;
    print('widget rebuild ');
    
    // so we dont want to widget rebuild thats why we use select method 

    return Scaffold(
      appBar: AppBar(title: Text("Provider type 4 change notifier provider "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
                
              ),
              onChanged: (value) {
                updateUSerName(value);
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your age",
                border: OutlineInputBorder(),
                
              ),
              onChanged: (value) {
                updateUSerAge(value);
              },
            ),

            SizedBox(
              height: 20,
            ),
            Text("Your name is ${user.name}"),
            SizedBox(
              height: 20,
            ),
            Text("Your age is ${user.age}"),

          ],
        ),
      ),
    );
  }
}