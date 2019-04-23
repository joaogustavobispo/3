import 'package:flutter/material.dart';
import 'package:login_singup/main.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 120, 30, 0),
                    child: Column(
                      children: <Widget>[
                        new Text(
                          'Dados Pessoais',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 50,
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
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Nome",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius:
                                        new BorderRadius.circular(25.0),
                                  ),
                                ),
                                validator: (val) =>
                                    val.isEmpty ? 'Informe o  seu Nome' : null,
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: new InputDecoration(
                                    labelText: "Cpf",
                                    fillColor: Colors.white,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green),
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    )),
                                validator: (val) =>
                                    val.isEmpty ? 'insira o cpf' : null,
                                keyboardType: TextInputType.numberWithOptions(),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: new InputDecoration(
                                    labelText: "Email",
                                    fillColor: Colors.white,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green),
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    )),
                                validator: (val) =>
                                    val.isEmpty ? 'informe seu email' : null,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: new InputDecoration(
                                    labelText: "Telefone",
                                    fillColor: Colors.white,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.green),
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    )),
                                validator: (val) => val.isEmpty
                                    ? 'Informe o seu telefone'
                                    : null,
                                keyboardType: TextInputType.phone,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                    child: Text('CONTINUAR',
                        style: TextStyle(color: Colors.white)),
                    color: Colors.green,
                    elevation: 7.0,
                    splashColor: Colors.green,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      return AlertDialog(
                        title: new Text("Cadastro com Sucesso"),
                        content: new Text("Os dados atuais serão perdidos"),
                        actions: <Widget>[
                          // usually buttons at the bottom of the dialog
                          new FlatButton(
                            child: new Text("Continuar"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                          ),
                        ],
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
                    child: Text('Volta', style: TextStyle(color: Colors.white)),
                    color: Colors.grey,
                    elevation: 7.0,
                    splashColor: Colors.green,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // return object of type Dialog
                          return AlertDialog(
                            title: new Text("Deseja Volta?"),
                            content: new Text("Os dados atuais serão perdidos"),
                            actions: <Widget>[
                              // usually buttons at the bottom of the dialog
                              new FlatButton(
                                child: new Text("Sim"),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
