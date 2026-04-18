class Book {
    String title;
    String author;
    double price;
    Book(this.title, this.author, this.price);

   double discountPrice(double discountPercent){
     return price - (price * discountPercent / 100);
   }
  
}

main(){
    Book book1=Book("Choker Bali", "Rabindranath Thakur", 500);
    print("Book Name:${book1.title}, Author: ${book1.author}, Price: \$${book1.price}");
    print("Book Name:${book1.title}, Author: ${book1.author}, Discount Price: \$${book1.discountPrice(20)}");

    Book book2=Book("Gitanjali", "Rabindranath Thakur", 300);
    print("Book Name:${book2.title}, Author: ${book2.author}, Price: \$${book2.price}");
    print("Book Name:${book2.title}, Author: ${book2.author}, Discount Price: \$${book2.discountPrice(20)}");
}