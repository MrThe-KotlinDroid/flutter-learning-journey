class Book {
  var title;
  var author;
  var price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - price * (discountPercent / 100);
  }

  @override
  String toString() {
    return '''
          Book information
          Title: $title
          Author: $author
          price: $price''';
  }
}

main() {
  var book1 = Book('House of earth and blood', 'Sarah J. Maas', 12.99);
  var book2 = Book('Kingdom of Ash', 'Sarah J. Mass', 14.99);

  print(book1);
  print('\t  Price after ${book1.discountedPrice(20)}\n');
  print(book2);
  print('\t  Price after ${book2.discountedPrice(20)}');
}
