import 'package:quizzApp/data/usecases/usecases.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:quizzApp/main/factories/factories.dart';

SaveCurrentAccount makeLocalSaveCurrentAccount() {
  return LocalSaveCurrentAccount(
    saveSecureCacheStorage: makeLocalStorageAdapter()
  );
}
