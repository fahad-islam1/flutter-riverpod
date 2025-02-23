import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class Provider1Screen extends ConsumerWidget {
  const Provider1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String nameread =ref.watch(nameProvider); 

    // ref.watch use in the build method for listening and ref.read use when we are out of build method like in the statefull method

    return Scaffold(
      appBar: AppBar(title: Text("Provider type 1 "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Provider type 1  $nameread",
            )
          ],
        ),
      ),
    );
  }
}