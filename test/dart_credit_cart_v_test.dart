import 'package:dart_credit_cart_v/dart_credit_cart_v.dart';
import 'package:test/test.dart';

void main() {
  group('Credit Card Number Masking Tests', () {
    ;

    test('Short credit card number returns same number', () {
      expect(maskCreditCardNumber('1234'), equals('1234'));
    });

    test('Empty credit card number returns empty string', () {
      expect(maskCreditCardNumber(''), equals(''));
    });
  });
}
