class Basket {
  List<int> _books = [];
  List<double> _totalPrice = [];
  int _currentCount = 0;
  Map<int, double> discountMapping = {
    1: 1.0,
    2: 0.95,
    3: 0.9,
    4: 0.8,
    5: 0.75,
  };

  void addBooks(List<int> books) {
    _books = books;
    _currentCount = _books.length;
  }

  double getPrice() {
    var firstCount = _currentCount;
    double totalPrice = 0;
    var books = _books;
    while (getTypes(books) > 0) {
      var combination = firstCount == 0 ? getTypes(books) : firstCount;
      var discount = discountMapping[combination]!;
      totalPrice += 8 * (combination) * discount;
      firstCount = 0;
      books.sort((a, b) => b - a);
      books = books
          .asMap()
          .map((key, value) {
            if (key < combination && value > 0) {
              value--;
            }
            return MapEntry(key, value);
          })
          .values
          .toList();
    }
    _totalPrice.add(totalPrice);
    if (_currentCount > 0) {
      _currentCount--;
      getPrice();
    }
    _totalPrice.sort((a, b) => a.compareTo(b));
    return _totalPrice.first;
  }

  int getTypes(List<int> books) {
    return books.where((element) => element > 0).length;
  }
}
