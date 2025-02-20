import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/main.dart';

class Provider1Statefull extends ConsumerStatefulWidget {
  const Provider1Statefull({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Provider1StatefullState();
}

class _Provider1StatefullState extends ConsumerState<Provider1Statefull> {
 @override
  void initState() {
  ref.read(nameProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider type 1 "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Provider type 1  ",
            )
          ],
        ),
      ),
    );
  }
}