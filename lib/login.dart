import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_afrshed/loginLogic.dart';

class login extends StatelessWidget {
  final loginLogic logic = new loginLogic();
  final _key = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/2@1X.png'),
                    fit: BoxFit.contain)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image(
                    image: AssetImage('assets/images/2@1X.png'),
                  ),
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    elevation: 3.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      validator: (e) {
                        if (e!.isEmpty) {
                          return "Mail-Adresse darf nicht leer sein";
                        }
                      },
                      //onSaved: (e) => feuerwehr = e,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(Icons.mail_outline_rounded,
                                color: Colors.blue),
                          ),
                          contentPadding: const EdgeInsets.all(20.0),
                          labelText: "Mail-Adresse"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    elevation: 3.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      validator: (e) {
                        if (e!.isEmpty) {
                          return "Passwort darf nicht leer sein";
                        }
                      },
                      //onSaved: (e) => email = e,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(Icons.lock_outline_rounded,
                                color: Colors.blue),
                          ),
                          contentPadding: const EdgeInsets.all(20.0),
                          labelText: "Passwort"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Passwort vergessen',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            primary: Colors.blue),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'oder',
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    ),
                  ),
                  Divider(
                    color: Colors.black38,
                    thickness: 1.5,
                    indent: 150,
                    endIndent: 150,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    buttonPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: Offset(1,1),
                            )
                          ]
                        ),
                        height: 70,
                        width: 110,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.facebook_rounded),
                              onPressed: null,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                          ],
                        )
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(1,1),
                                )
                              ]
                          ),
                        height: 70,
                        width: 110,
                        child:Column(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.login_rounded),
                                  onPressed: null,
                                ),
                                Text(
                                  'Account erstellen',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                ),
                              ],
                            )
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(1,1),
                                )
                              ]
                          ),
                          height: 70,
                          width: 110,
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(Icons.facebook_rounded),
                                onPressed: null,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
