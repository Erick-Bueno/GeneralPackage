import 'package:pacotasso/utils/string_formatter/string_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late StringFormatter stringFormatter;

  setUp(() {
    stringFormatter = StringFormatter();
  });

  group('StringFormatter deve capitalizar a primeira letra da string', () {
    test('capitalizeFirstLetter', () {
      const input = 'flutter';
      const expectedOutput = 'Flutter';

      final result = stringFormatter.capitalizeFirstLetter(input);

      expect(result, expectedOutput);
    });

    test('StringFormatter deve disparar erro caso a string esteja vazia', () {
      expect(() => stringFormatter.capitalizeFirstLetter(''),
          throwsA(isA<RangeError>()));
    });

    test('getFirstName deve retornar o primeiro nome', () {
      const input = 'John Doe';
      const expectedOutput = 'John';
      final result = stringFormatter.getFirstName(input);

      expect(stringFormatter.getFirstName(input), expectedOutput);
    });
    test('getFirstName deve retornar o  nome inteiro caso não tenha espaços',
        () {
      const input = 'JohnDoe';
      const expectedOutput = 'JohnDoe';
      final result = stringFormatter.getFirstName(input);

      expect(result, expectedOutput);
    });
  });
}
