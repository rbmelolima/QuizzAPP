import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/validation/protocols/protocols.dart';
import 'package:quizzApp/validation/validators/validators.dart';

Validation makeLoginValidation() {
  return ValidationComposite(makeLoginValidations());
}

List<FieldValidation> makeLoginValidations() {
  return [
    RequiredFieldValidation('email'),
    EmailValidation('email'),
    RequiredFieldValidation('password'),
  ];
}
