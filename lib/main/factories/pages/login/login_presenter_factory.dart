import 'package:quizzApp/main/factories/factories.dart';
import 'package:quizzApp/presentation/presenters/presenters.dart';
import 'package:quizzApp/ui/pages/pages.dart';

LoginPresenter makeStreamLoginPresenter() {
  return StreamLoginPresenter(
    authentication: makeRemoteAuthentication(),
    validation: makeLoginValidation(),
  );
}

LoginPresenter makeGetxLoginPresenter() {
  return GetxLoginPresenter(
    authentication: makeRemoteAuthentication(),
    validation: makeLoginValidation(),
  );
}
