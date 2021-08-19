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
        body: Stack(
          children: [
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/2@1X.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
            Container(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    Card(
                      elevation: 6.0,
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
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20, right: 15),
                              child: Icon(Icons.local_fire_department,
                                  color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            labelText: "Mail-Adresse"),
                      ),
                    ),

                    //card for Email TextFormField
                    Card(
                      elevation: 6.0,
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
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20, right: 15),
                              child: Icon(Icons.email, color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            labelText: "Email"),
                      ),
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
