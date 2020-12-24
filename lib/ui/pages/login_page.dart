import 'package:flutter/material.dart';
import '../components/components.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ForDevHeader(),
            Headline1(text: 'Login'),
            Container(height: 24),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Container(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Container(height: 16),
                    SizedBox(
                      width: double.maxFinite,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Entrar'.toUpperCase()),
                      ),
                    ),
                    Container(height: 16),
                    FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      label: Text('Criar conta'.toUpperCase()),
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
