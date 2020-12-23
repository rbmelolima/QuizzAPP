import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:quizzApp/data/http/http.dart';
import 'package:quizzApp/data/usecases/usecases.dart';
import 'package:quizzApp/domain/usecases/usecases.dart';
import 'package:test/test.dart';

class HttpClientSpy extends Mock implements HttpClient {}
void main() {
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;

  setUp(() {
    httpClient = HttpClientSpy();
    url = faker.internet.httpUrl();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should call HTTPClient with correct values', () async {
    final params = AuthenticationParams(
      email: faker.internet.email(),
      secret: faker.internet.password(),
    );

    await sut.auth(params);

    verify(
      httpClient.request(
        url: url,
        method: 'post',
        body: {
          'email': params.email,
          'password': params.secret,
        },
      ),
    );
  });
}
