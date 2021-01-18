import 'package:quizzApp/data/usecases/usecases.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:quizzApp/main/factories/factories.dart';

LoadCurrentAccount makeLocalLoadCurrentAccount() {
  return LocalLoadCurrentAccount(makeLocalStorageAdapter());
}
