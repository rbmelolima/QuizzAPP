import 'package:quizzApp/main/factories/factories.dart';
import 'package:quizzApp/presentation/presenters/presenters.dart';
import 'package:quizzApp/ui/pages/pages.dart';

LoginPresenter makeLoginPresenter() {
  return StreamLoginPresenter(
    authentication: makeRemoteAuthentication(),
    validation: makeLoginValidation(),
  );
}
