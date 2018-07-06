import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(margin: EdgeInsets.only(top: 15.0)),
              submitButton(),
            ],
          ),
        ),
        margin: EdgeInsets.all(20.0),
      ),
      margin: EdgeInsets.all(10.0),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'someone@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        // return null if valid else return error: String
        if (value.length < 1) {
          return 'Please enter an email';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email address';
        }
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '*******',
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (String value) {
        if (value.length < 1) {
          return 'Please enter a password';
        }
        return null;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.reset();
        }
      },
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
