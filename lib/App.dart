import 'package:flutter/material.dart';

import 'screens/Login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log me in',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log me in'),
        ),
        body: LoginScreen(),
        drawer: Drawer(),
      ),
    );
  }
}
