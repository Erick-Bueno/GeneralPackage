import 'package:faker/faker.dart';
import 'package:pacotasso/utils/string_formatter/string_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringFormatter', () {
    test('capitalizeFirstLetter deve capitalizar a primeira letra da string',
        () {
      var input = faker.person.firstName();
      var expectedOutput = input[0].toUpperCase() + input.substring(1);

      final result = input.capitalizeFirstLetter();

      expect(result, expectedOutput);
    });

    test('capitalizeFirstLetter deve disparar erro caso a string esteja vazia',
        () {
      const input = '';
      expect(() => input.capitalizeFirstLetter(), throwsA(isA<RangeError>()));
    });

    test('getFirstName deve retornar o primeiro nome', () {
      var input = faker.person.name();
      var expectedOutput = input.split(' ')[0];
      final result = input.getFirstName();

      expect(result, expectedOutput);
    });
    test('getFirstName deve retornar o  nome inteiro caso não tenha espaços',
        () {
      var firstName = faker.person.firstName();
      var lastName = faker.person.lastName();

      var nameWithoutSpaces = firstName + lastName;

      var result = nameWithoutSpaces.getFirstName();

      expect(result, nameWithoutSpaces);
    });
  });
}
