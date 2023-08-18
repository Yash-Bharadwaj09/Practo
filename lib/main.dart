import 'package:flutter/material.dart';
import 'package:practo/homepage_screens/homepage2.dart';
// import 'package:practo/offerpage.dart';
// import 'package:practo/form_tabbar2.dart';
// import 'package:practo/searchpage.dart';
// import 'package:practo/number.dart';
// import 'package:practo/number.dart';

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
      home:  HomePage2(),
    );
  }
}
