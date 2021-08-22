import 'package:flutter_harry_potter_kata/basket.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('1 copy of the first book cost 8 EUR', () {
    // arrange
    var basket = Basket();
    basket.addBooks([1, 0, 0, 0, 0]);
    // act
    var price = basket.getPrice();
    // assert
    expect(price, 8);
  });

  test('2 different books with 5% discount', () {
    // arrange
    var basket = Basket();
    basket.addBooks([1, 1, 0, 0, 0]);
    // act
    var price = basket.getPrice();
    // assert
    expect(price, 15.2);
  });
}
