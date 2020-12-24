import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage('lib/ui/assets/logo.png'),
            ),
          ),
          Text('Login'.toUpperCase()),
          
          Form(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
               Container(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
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
                    padding: EdgeInsets.symmetric(vertical: 16),
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
          )
        ],
      ),
    );
  }
}
