import 'package:flutter/material.dart';
import 'package:todo_app/homepage/myhomepage.dart';
import 'package:todo_app/utility/TodoApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const Myhomepage(),
      routes: {'/details': (context) => Myhomepage()},
    );
  }
}
