import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_presenter.dart';

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<LoginPresenter>(context);

    return StreamBuilder<String>(
      stream: presenter.emailErrorStream,
      builder: (context, snapshot) {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              errorText: snapshot.data?.isEmpty == true ? null : snapshot.data,
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: presenter.validateEmail,
          ),
        );
      },
    );
  }
}
