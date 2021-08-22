class Basket {
  List<int> _books = [];
  Map<int, double> discountMapping = {
    1: 1.0,
    2: 0.95,
    3: 0.9,
    4: 0.8,
    5: 0.75,
  };

  void addBooks(List<int> books) {
    _books = books;
  }

  double getPrice() {
    double totalPrice = 0;
    while (getTypes() > 0) {
      var discount = discountMapping[getTypes()]!;
      totalPrice += 8 * getTypes() * discount;
      _books = _books.map((book) {
        if (book > 0) {
          book--;
        }
        return book;
      }).toList();
    }
    return totalPrice;
  }

  int getTypes() {
    return _books.where((element) => element > 0).length;
  }
}
