import 'package:flutter/material.dart';
import 'package:login_singup/signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and SingUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 120, 30, 0),
                    child: Column(
                      children: <Widget>[
                        new Text(
                          'DRIVE',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(170, 200, 30, 0),
                    child: Column(
                      children: <Widget>[
                        new Text(
                          'YOU',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Theme(
            data: Theme.of(context).copyWith(splashColor: Colors.transparent),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "CPF",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                        validator: (val) => val.isEmpty ? 'Insira o cpf' : null,
                        keyboardType: TextInputType.numberWithOptions(),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "SENHA",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                        validator: (val) =>
                            val.isEmpty ? 'insira a senha' : null,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  minWidth: double.infinity,
                  child: RaisedButton(
                    child:
                        Text('Conectar', style: TextStyle(color: Colors.white)),
                    color: Colors.deepOrange,
                    elevation: 7.0,
                    splashColor: Colors.green,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  minWidth: double.infinity,
                  child: RaisedButton(
                    child: Text('Registrar',
                        style: TextStyle(color: Colors.black)),
                    color: Colors.white,
                    elevation: 7.0,
                    splashColor: Colors.grey,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}