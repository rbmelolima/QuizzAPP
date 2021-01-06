import 'package:quizzApp/main/builders/builders.dart';
import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/validation/protocols/protocols.dart';
import 'package:quizzApp/validation/validators/validators.dart';

Validation makeLoginValidation() {
  return ValidationComposite(makeLoginValidations());
}

List<FieldValidation> makeLoginValidations() {
  return [
    ...ValidationBuilder.field('email').required().email().build(),
    ...ValidationBuilder.field('password').required().build(),
  ];
}
