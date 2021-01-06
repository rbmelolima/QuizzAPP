import 'package:equatable/equatable.dart';
import 'package:quizzApp/validation/protocols/protocols.dart';

class EmailValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  EmailValidation(this.field);

  String validate(String value) {
    final regex = RegExp("[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+");

    final isValid = value?.isNotEmpty != true || regex.hasMatch(value);

    return isValid ? null : 'Campo inválido';
  }
}