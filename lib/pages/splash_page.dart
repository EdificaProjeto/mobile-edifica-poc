import 'dart:async';

import 'package:edificando/pages/inicial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500), // Duração da animação
          pageBuilder: (_, __, ___) => InicialPage(),
          transitionsBuilder: (_, animation, __, child) {
            // Aplicar animação de desvanecimento
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(1),
      statusBarBrightness: Brightness.dark,

    ));

    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/edifica_grande.png'),
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(4.2, -1.4),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFEC752B),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-3.7, 1.4),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFEC752B),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}