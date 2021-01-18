import 'package:quizzApp/main/factories/factories.dart';
import 'package:quizzApp/presentation/presenters/presenters.dart';
import 'package:quizzApp/ui/pages/pages.dart';

SplashPresenter makeGetxSplashPresenter() {
  return GetxSplashPresenter(
    loadCurrentAccount: makeLocalLoadCurrentAccount(),
  );
}
