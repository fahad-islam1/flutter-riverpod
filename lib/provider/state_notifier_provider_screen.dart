import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierProviderScreen extends ConsumerStatefulWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StateNotifierProviderScreenState();
}

class _StateNotifierProviderScreenState extends ConsumerState<StateNotifierProviderScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider type 3 state notifier provider "),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
      ),
    );;
  }
}