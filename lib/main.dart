import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:my_first_crud_flutter_/firebase_options.dart';
import 'package:my_first_crud_flutter_/pages/home_pages.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}