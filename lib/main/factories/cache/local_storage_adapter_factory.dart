import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:quizzApp/infra/cache/cache.dart';

LocalStorageAdapter makeLocalStorageAdapter() {
  final secureStorage = FlutterSecureStorage();
  return LocalStorageAdapter(secureStorage: secureStorage);
}