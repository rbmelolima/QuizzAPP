import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:quizzApp/ui/pages/pages.dart';

class GetxSplashPresenter implements SplashPresenter {
  final LoadCurrentAccount loadCurrentAccount;
  var _navigateTo = RxString();

  GetxSplashPresenter({@required this.loadCurrentAccount});

  Stream<String> get navigateToStream => _navigateTo.stream;

  Future<void> checkAccount() async {
    await loadCurrentAccount.load();
  }
}

class LoadCurrentAccountSpy extends Mock implements LoadCurrentAccount {}

void main() {
  test('Should call LoadCurrentAccount', () async {
    final loadCurrentAccount = LoadCurrentAccountSpy();
    final sut = GetxSplashPresenter(
      loadCurrentAccount: loadCurrentAccount,
    );

    await sut.checkAccount();
    verify(loadCurrentAccount.load()).called(1);
  });
}
