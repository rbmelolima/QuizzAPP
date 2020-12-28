import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_presenter.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<LoginPresenter>(context);

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: StreamBuilder<bool>(
          stream: presenter.isFormValidStream,
          builder: (context, snapshot) {
            return RaisedButton(
              onPressed: snapshot.data == true ? presenter.auth : null,
              child: Text(
                'Entrar'.toUpperCase(),
              ),
            );
          },
        ),
      ),
    );
  }
}
