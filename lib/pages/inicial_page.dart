import 'package:edificando/pages/cadastro_page.dart';
import 'package:edificando/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class InicialPage extends StatelessWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/edifica_grande.png',
                    width: 500,
                    height: 350,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: Color(0xFFEF6C09),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 50, 0, 0),
                        child: Text(
                          'Bem-Vindo!\n',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 25),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 50),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            minimumSize: Size(150, 50),
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.black,
                            textStyle: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 18),
                          ),
                          child: Text("Login"),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 1),
                      child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 50),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CadPage()),
                              );
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(150, 50)),
                              padding: MaterialStateProperty.all(EdgeInsets.zero),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              foregroundColor: MaterialStateProperty.all(Colors.black),

                            ),
                            child: Text(
                              'Cadastro',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Readex Pro',
                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
