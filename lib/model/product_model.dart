class Product {

  final String name;
  final String image;
  final String price;
  final String stock;

  Product({this.name,this.image,this.price,this.stock});

  static List<Product> allProducts() {

    var lstOfProducts = new List<Product>();

    lstOfProducts.add(new Product(name:"MANZANA",image: "manzana.jpg",price: "S/ 0.50 x Unidad",stock: "20"));
    lstOfProducts.add(new Product(name:"PAPAYA",image: "papaya.jpg",price: "S/ 1.50 x Unidad",stock: "8"));
    lstOfProducts.add(new Product(name:"PLATANO",image: "platano.jpg",price: "S/ 0.40 x Unidad",stock: "25"));
    lstOfProducts.add(new Product(name:"GRANADILLA",image: "granadilla.jpg",price: "S/ 0.50 x Unidad",stock: "20"));
    lstOfProducts.add(new Product(name:"CAMU CAMU",image: "camu.jpg",price: "S/ 1.00 x kilo",stock: "15"));

    return lstOfProducts;

  }

}