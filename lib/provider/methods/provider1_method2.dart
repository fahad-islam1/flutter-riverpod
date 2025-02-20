import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class Provider1Method2Screen extends StatelessWidget {
  const Provider1Method2Screen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text("Provider type 1 Method 2 "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                    final String name =ref.watch(nameProvider);

              return Text(
                "Provider type 1 Method 2 $name",
              );}
            )
          ],
        ),
      ),
    );
  }
}