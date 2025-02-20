import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final number = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Provider type 2 :State notiifier provider "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           

            // button
            ElevatedButton(child: Text("add"),onPressed: (){
              ref.read(counterProvider.notifier).state++;
              // ref.read(counterProvider.notifier).update((state)=>10);

            },),
            SizedBox(
              height: 20,
            ),
             Text(
              "Counter $number",
            ),    SizedBox(
              height: 20,
            ),
   ElevatedButton(child: Text("Minus"),onPressed: (){
              ref.read(counterProvider.notifier).state--;
              // ref.read(counterProvider.notifier).update((state)=>10);

            },),
          ],
        ),
      ),
    );;
  }
}