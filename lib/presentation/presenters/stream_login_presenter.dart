import 'dart:async';

import 'package:meta/meta.dart';
import 'package:quizzApp/domain/helpers/helpers.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/ui/pages/pages.dart';

class LoginState {
  String email;
  String password;
  String emailError;
  String passwordError;
  String mainError;
  bool isLoading = false;

  bool get isFormValid =>
      emailError == null &&
      passwordError == null &&
      email != null &&
      password != null;
}

class StreamLoginPresenter implements LoginPresenter {
  final Validation validation;
  final Authentication authentication;

  var _controller = StreamController<LoginState>.broadcast();

  var _state = LoginState();

  Stream<String> get emailErrorStream =>
      _controller?.stream?.map((state) => state.emailError)?.distinct();
  Stream<String> get passwordErrorStream =>
      _controller?.stream?.map((state) => state.passwordError)?.distinct();
  Stream<String> get mainErrorStream =>
      _controller?.stream?.map((state) => state.mainError)?.distinct();
  Stream<bool> get isFormValidStream =>
      _controller?.stream?.map((state) => state.isFormValid)?.distinct();
  Stream<bool> get isLoadingStream =>
      _controller?.stream?.map((state) => state.isLoading)?.distinct();

  StreamLoginPresenter({
    @required this.validation,
    @required this.authentication,
  });

  void update() => _controller?.add(_state);

  void validateEmail(String email) {
    _state.email = email;
    _state.emailError = validation.validate(field: 'email', value: email);
    update();
  }

  void validatePassword(String password) {
    _state.password = password;
    _state.passwordError =
        validation.validate(field: 'password', value: password);
    update();
  }

  Future<void> auth() async {
    _state.isLoading = true;
    update();

    try {
      await authentication.auth(AuthenticationParams(
        email: _state.email,
        secret: _state.password,
      ));
    } on DomainError catch (error) {
      _state.mainError = error.description;      
    }

    _state.isLoading = false;
    update();
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }
}
