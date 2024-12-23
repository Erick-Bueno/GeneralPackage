import 'package:pacotasso/utils/string_formatter/string_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringFormatter deve capitalizar a primeira letra da string', () {
    test('capitalizeFirstLetter', () {
      const input = 'flutter';
      const expectedOutput = 'Flutter';

      final result = input.capitalizeFirstLetter();

      expect(result, expectedOutput);
    });

    test('StringFormatter deve disparar erro caso a string esteja vazia', () {
      const input = '';
      expect(() => input.capitalizeFirstLetter(),
          throwsA(isA<RangeError>()));
    });

    test('getFirstName deve retornar o primeiro nome', () {
      const input = 'John Doe';
      const expectedOutput = 'John';
      final result = input.getFirstName();

      expect(result, expectedOutput);
    });
    test('getFirstName deve retornar o  nome inteiro caso não tenha espaços',
        () {
      const input = 'JohnDoe';
      const expectedOutput = 'JohnDoe';
      final result = input.getFirstName();

      expect(result, expectedOutput);
    });
  });
}
