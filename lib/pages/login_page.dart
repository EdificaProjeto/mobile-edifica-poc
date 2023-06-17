import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:edificando/app/pages/home/home_page.dart';
import 'package:edificando/pages/cadastro_page.dart';
import 'package:edificando/pages/inicial_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF6C09),
      appBar: AppBar(
        backgroundColor: Color(0xFFEF6C09),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => InicialPage()),
            );
          },
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CadPage()),
                  );
                },
                child: Text(
                  'Registrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 45, 24, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.campoEmailController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 16),
                            hintStyle: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                          style: TextStyle(fontSize: 16),
                          minLines: 1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 116, 24, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.campoSenhaController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle: TextStyle(fontSize: 16),
                            hintStyle: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Altere a cor conforme necessário
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.lock_open,
                            ),
                          ),
                          style: TextStyle(fontSize: 16),
                          minLines: 1,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 150),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEF6C09),
                            textStyle: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            minimumSize: Size(280, 60),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Ou',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 220),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print('btnGoogle pressed ...');
                          },
                          icon: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.yellow,
                                  Colors.blue,
                                  Colors.green,
                                ],
                                tileMode: TileMode.mirror,
                              ).createShader(bounds);
                            },
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                          ),
                          label: Text(
                            'Continuar com Google',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                            minimumSize: Size(280, 60),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            side: BorderSide(
                              width: 1,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 150),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print('btnFacebook pressed ...');
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Color(0xFF3B5998),
                          ),
                          label: Text(
                            'Continuar com Facebook',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                            minimumSize: Size(280, 60),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            side: BorderSide(
                              width: 1,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
