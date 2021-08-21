import 'package:flutter_test/flutter_test.dart';

void main() {
  test('1 copy of the first book cost 8 EUR', () {
    // arrange
    Basket.addBooks([1, 0, 0, 0, 0]);
    // act
    var price = Basket.getPrice();
    // assert
    expect(price, 8);
  });
}

class Basket {
  static void addBooks(List<int> books) {}
  static getPrice() {}
}
