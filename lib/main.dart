import 'package:edificando/pages/inicial_page.dart';
import 'package:edificando/pages/splash_page.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange
      ),
      home: SplashPage(),
    );
  }
}
