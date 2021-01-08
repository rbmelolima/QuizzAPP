import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quizzApp/ui/pages/pages.dart';

import '../../components/components.dart';
import 'components/components.dart';

class LoginPage extends StatelessWidget {
  final LoginPresenter presenter;

  LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    void _hideKeyboard() {
      final currentFocus = FocusScope.of(context);

      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }

    return Scaffold(
      body: Builder(
        builder: (context) {
          presenter.isLoadingStream.listen((isLoading) {
            if (isLoading) {
              showLoading(context);
            } else {
              hideLoading(context);
            }
          });

          presenter.mainErrorStream.listen((error) {
            if (error != null) {
              showErrorMessage(context, error);
            }
          });

          presenter.navigateToStream.listen((page) {
            if (page?.isNotEmpty == true) {
              Get.offAllNamed(page);
            }
          });

          return GestureDetector(
            onTap: _hideKeyboard,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ForDevHeader(),
                  Headline1(text: 'Login'),
                  Container(height: 24),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Provider(
                      create: (_) => presenter,
                      child: Form(
                        child: Column(
                          children: [
                            EmailInput(),
                            PasswordInput(),
                            LoginButton(),
                            FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.person),
                              label: Text('Criar conta'.toUpperCase()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
