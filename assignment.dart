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
    print("Book1 Original Price: \$${book1.price}");
    print("Discounted Price: \$${book1.discountPrice(20)}");

    Book book2=Book("Gitanjali", "Rabindranath Thakur", 300);
    print("Book2 Original Price: \$${book2.price}");
    print("Book2 Discounted Price: \$${book2.discountPrice(20)}");

}