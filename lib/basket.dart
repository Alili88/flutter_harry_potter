class Basket {
  List<int> _books = [];

  void addBooks(List<int> books) {
    _books = books;
  }

  double getPrice() {
    if (_books.where((element) => element == 1).length == 1) {
      return 8;
    }
    if (_books.where((element) => element == 1).length == 2) {
      return 15.2;
    }
    return 0;
  }
}
