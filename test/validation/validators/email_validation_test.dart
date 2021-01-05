import 'package:flutter_test/flutter_test.dart';
import 'package:quizzApp/validation/protocols/protocols.dart';

class EmailValidation implements FieldValidation {
  final String field;

  EmailValidation(this.field);

  String validate(String value) {
    return null;
  }
}

void main() {
  EmailValidation sut;

  setUp(() {
    sut = EmailValidation('any_value');
  });

  test('Should return null if email is empty', () {
    expect(sut.validate(''), null);
  });

  test('Should return null if email is null', () {    
    expect(sut.validate(null), null);
  });

   test('Should return null if email is valid', () {    
    expect(sut.validate('rbmelolima@gmail.com'), null);
  });
}
