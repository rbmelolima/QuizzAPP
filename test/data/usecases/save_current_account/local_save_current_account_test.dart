import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:meta/meta.dart';
import 'package:quizzApp/domain/entities/entities.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';

class LocalSaveCurrentAccount implements SaveCurrentAccount {
  final SaveSecureCacheStorage saveSecureCacheStorage;

  LocalSaveCurrentAccount({@required this.saveSecureCacheStorage});

  Future<void> save(AccountEntity account) async {
    await saveSecureCacheStorage.saveSecure(
      key: 'token',
      value: account.token,
    );
  }
}

abstract class SaveSecureCacheStorage {
  Future<void> saveSecure({
    @required String key,
    @required String value,
  });
}

class SaveSecureCacheStorageSpy extends Mock implements SaveSecureCacheStorage {
}

void main() {
  test('Should call SaveCacheStorage with correct values', () async {
    final saveSecureCacheStorage = SaveSecureCacheStorageSpy();
    final sut = LocalSaveCurrentAccount(
      saveSecureCacheStorage: saveSecureCacheStorage,
    );
    final account = AccountEntity(faker.guid.guid());

    await sut.save(account);

    verify(saveSecureCacheStorage.saveSecure(
      key: 'token',
      value: account.token,
    ));
  });
}
