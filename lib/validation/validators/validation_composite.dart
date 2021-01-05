import 'package:meta/meta.dart';
import 'package:quizzApp/presentation/protocols/protocols.dart';
import 'package:quizzApp/validation/protocols/protocols.dart';

class ValidationComposite implements Validation {
  final List<FieldValidation> validations;

  ValidationComposite(this.validations);

  String validate({@required String field, @required String value}) {
    String error;

    for (final validation in validations.where(
      (element) => element.field == field,
    )) {
      error = validation.validate(value);

      if (error?.isNotEmpty == true) {
        return error;
      }
    }

    return error;
  }
}
