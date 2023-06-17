import 'package:easy_debounce/easy_debounce.dart';
import 'package:edificando/app/pages/home/home_page.dart';
import 'package:edificando/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'inicial_page.dart';

class CadPage extends StatefulWidget {
  const CadPage({super.key});

  @override
  State<CadPage> createState() => _CadPageState();
}

class _CadPageState extends State<CadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF6C09),
      appBar: AppBar(
        backgroundColor: Color(0xFFEF6C09),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => InicialPage()),
            );
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,

          ),
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]
        ),
        actions: [],
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
                            '_model.campoNomeController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nome',
                            labelStyle: Theme.of(context).textTheme.subtitle1,
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyText2,
                          minLines: 1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 115, 24, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.campoEmailController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: Theme.of(context).textTheme.subtitle1,
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyText2,
                          minLines: 1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 185, 24, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.campoSenhaController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle: Theme.of(context).textTheme.subtitle1,
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyText2,
                          minLines: 1,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 255, 24, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.campoConfSenhaController',
                            Duration(milliseconds: 2000),
                                () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Confirmar Senha',
                            labelStyle: Theme.of(context).textTheme.subtitle1,
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).errorColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFECECEC),
                            prefixIcon: Icon(
                              Icons.check,
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyText2,
                          minLines: 1,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 150),
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
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            minimumSize: Size(280, 60),
                          ),
                          child: Text(
                            'Registrar',
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 50, 0, 0),
                        child: Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                          child: Checkbox(
                            value: false,
                            onChanged: (value) {

                            },
                            activeColor: Colors.black,
                          ),


                        ),
                      ),
                    ),

                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 60, 0, 10),
                        child: Text(
                          'Eu aceito os Termos de Política e Privacidade.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
              child: Text(
                'Registrar',
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