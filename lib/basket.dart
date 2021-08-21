class Basket {
  List<int> _books = [];

  void addBooks(List<int> books) {
    _books = books;
  }

  int getPrice() {
    if (_books.where((element) => element == 1).length == 1) {
      return 8;
    }
    return 0;
  }
}
