import 'package:firstlearnapp/model/product.dart';

class ProductOperations {
  List<Product> _products = [];
  add(int id, String name, String url, double price) {
    Product product = new Product();
    product.id = id;
    product.name = name;
    product.imageURL = url;
    product.price = price;
    _products.add(product);
  }

  List<Product> getProducts() {
    return _products;
  }
}
