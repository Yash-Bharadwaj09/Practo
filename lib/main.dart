import 'package:flutter/material.dart';
import 'package:practo/src/presentation/views/login_page/login_page.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Practo',
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}
