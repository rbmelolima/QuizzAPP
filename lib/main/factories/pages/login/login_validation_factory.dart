import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/validation/validators/validators.dart';

Validation makeLoginValidation() {
  return ValidationComposite([
    RequiredFieldValidation('email'),
    EmailValidation('email'),
    RequiredFieldValidation('password')
  ]);
}
