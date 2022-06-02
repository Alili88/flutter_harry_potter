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

  test('[2, 1, 2, 2, 1] will be 51.2', () {
    // arrange
    var basket = Basket();
    var books = [2, 1, 2, 2, 1];
    basket.addBooks(books);
    // act
    var price = basket.getPrice();
    // assert
    expect(price, 51.2);
  });

  test('[5, 5, 4, 5, 4] will be 141.2', () {
    // arrange
    var basket = Basket();
    var books = [5, 5, 4, 5, 4];
    basket.addBooks(books);
    // act
    var price = basket.getPrice();
    // assert
    expect(price, 3 * (8 * 5 * 0.75) + 2 * (8 * 4 * 0.8));
  });
}
