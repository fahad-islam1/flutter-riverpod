import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class StateNotifierProviderScreen extends ConsumerStatefulWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StateNotifierProviderScreenState();
}

class _StateNotifierProviderScreenState extends ConsumerState<StateNotifierProviderScreen> {

  updateUSerName(namevalue){
    ref.read(userProvider.notifier).updateName(namevalue);
  }

  updateUSerAge(age){
    ref.read(userProvider.notifier).updateAge(int.parse(age));
  }

  @override
  Widget build(BuildContext context) {
    final user=ref.watch(userProvider);
    print('widget rebuild ');
    // so we dont want to widget rebuild thats why we use select method 
    final username=ref.watch(userProvider.select((value)=>value.name));

    return Scaffold(
      appBar: AppBar(title: Text("Provider type 3 state notifier provider "),),
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
            Text("Your name is $username"),
            Text("Your age is ${user.age}"),

          ],
        ),
      ),
    );
  }
}