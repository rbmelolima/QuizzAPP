import 'package:flutter_test/flutter_test.dart';
import 'package:quizzApp/main/factories/factories.dart';
import 'package:quizzApp/validation/validators/validators.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
    ]);
  });
}
