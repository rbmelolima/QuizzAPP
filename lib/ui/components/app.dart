import 'package:flutter/material.dart';
import '../pages/login_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ForDev',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ForDev'),
          centerTitle: true,
        ),
        body: LoginPage(),
      ),
    );
  }
}
