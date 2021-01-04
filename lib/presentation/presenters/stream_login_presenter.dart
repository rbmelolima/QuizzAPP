import 'package:meta/meta.dart';
import 'dart:async';

import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';

class LoginState {
  String email;
  String password;

  String emailError;
  String passwordError;

  bool isLoading = false;

  bool get isFormValid =>
      emailError == null &&
      passwordError == null &&
      email != null &&
      password != null;
}

class StreamLoginPresenter {
  final Validation validation;
  final Authentication authentication;

  final _controller = StreamController<LoginState>.broadcast();

  var _state = LoginState();

  Stream<String> get emailErrorStream =>
      _controller.stream.map((state) => state.emailError).distinct();

  Stream<String> get passwordErrorStream =>
      _controller.stream.map((state) => state.passwordError).distinct();

  Stream<bool> get isFormValidStream =>
      _controller.stream.map((state) => state.isFormValid).distinct();

  Stream<bool> get isLoadingStream =>
      _controller.stream.map((state) => state.isLoading).distinct();

  StreamLoginPresenter({
    @required this.validation,
    @required this.authentication,
  });

  void update() => _controller.add(_state);

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

    await authentication.auth(AuthenticationParams(
      email: _state.email,
      secret: _state.password,
    ));
    
    _state.isLoading = false;
    update();
  }
}
