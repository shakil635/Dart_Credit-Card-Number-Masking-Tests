/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_credit_cart_v_base.dart';

// TODO: Export any libraries intended for clients of this package.

String maskCreditCardNumber(String card) {
  try {
    final y = card.substring(0, card.length - 4);
    final x = card.replaceAll(y, "X" * y.length);
    return x;
  } on RangeError {
    return card;
  }
}

void main() {
  String card = "1234567890123456";
  print(maskCreditCardNumber(card));
}

/*
Practice Question 2: Credit Card Number Masking
Task:
Write a function that masks all but the 
last four characters of a credit card number with Xs. 
For example, 1234567890123456 should be converted to XXXXXXXXXXXX3456.
 */