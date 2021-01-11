import 'package:quizzApp/data/cache/cache.dart';
import 'package:quizzApp/domain/entities/entities.dart';
import 'package:quizzApp/domain/helpers/helpers.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';

class LocalLoadCurrentAccount implements LoadCurrentAccount {
  final FetchSecureCacheStorage fetchSecureCacheStorage;

  LocalLoadCurrentAccount(this.fetchSecureCacheStorage);

  Future<AccountEntity> load() async {
    try {
      final token = await fetchSecureCacheStorage.fetchSecure('token');
      return AccountEntity(token);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }
}