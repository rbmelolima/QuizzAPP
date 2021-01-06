import 'package:quizzApp/data/usecases/usecases.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:quizzApp/main/factories/factories.dart';

Authentication makeRemoteAuthentication() {
  return RemoteAuthentication(
    httpClient: makeHttpAdapter(),
    url: makeAPIUrl('login'),
  );
}
