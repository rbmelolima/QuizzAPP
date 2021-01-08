import 'package:quizzApp/data/cache/cache.dart';
import 'package:quizzApp/domain/entities/entities.dart';
import 'package:quizzApp/domain/helpers/helpers.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:meta/meta.dart';

class LocalSaveCurrentAccount implements SaveCurrentAccount {
  final SaveSecureCacheStorage saveSecureCacheStorage;

  LocalSaveCurrentAccount({@required this.saveSecureCacheStorage});

  Future<void> save(AccountEntity account) async {
    try {
      await saveSecureCacheStorage.saveSecure(
        key: 'token',
        value: account.token,
      );
    } catch (error) {
      throw DomainError.unexpected;
    }
  }
}