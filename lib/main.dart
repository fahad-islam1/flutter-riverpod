import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_project/change_notifier_screen.dart';

import 'package:riverpod_practice_project/provider/user_change_notiier_provider.dart';
import 'package:riverpod_practice_project/provider/user_state_notifier_provider.dart';
import 'package:riverpod_practice_project/user_model.dart';

// provider 
final nameProvider=Provider<String>((ref)=>"fahad Islam");
// stateprovider 
final counterProvider = StateProvider<int>((ref) {
  return 0 ;
});
// state notifire provider
final userProvider = StateNotifierProvider<UserStateNotifier,User>((ref) {
  ref.keepAlive();
  return UserStateNotifier();
});
// change notifier provider 
final userChangeNotifierprovider=ChangeNotifierProvider((ref)=>UserChangeNotiierProvider());
// future provider 
// stream provider 




void main() {
  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserChangenotifierProvider(),
      
    );
  }
}
