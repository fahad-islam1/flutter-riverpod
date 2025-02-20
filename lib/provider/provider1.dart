import 'package:flutter/material.dart';

class Provider1Screen extends StatelessWidget {
  const Provider1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider type 1 "),),
      body: Column(
        children: [
          Text(
            "Provider type 1 ",
          )
        ],
      ),
    );
  }
}