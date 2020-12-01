import 'package:firstlearnapp/helpers/productoperations.dart';
import 'package:firstlearnapp/model/product.dart';
import 'package:flutter/material.dart';

class FlipKartDesign extends StatefulWidget {
  @override
  _FlipKartDesignState createState() => _FlipKartDesignState();
}

class _FlipKartDesignState extends State<FlipKartDesign> {
  Widget _showProduct(String imageURL, String name) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [Image.network(imageURL), Text(name)],
        ),
      ),
    );
  }

  List<Widget> _getChildren() {
    return productOperations
        .getProducts()
        .map((Product product) => _showProduct(product.imageURL, product.name));
    //List<Product> products = productOperations.getProducts();
    //List<Widget> childrens = products
    //  .map((Product product) => _showProduct(product.imageURL, product.name));
    // products.forEach((Product product) {
    //   Widget currentWidget = _showProduct(product.imageURL, product.name);
    //   childrens.add(currentWidget);
    // });
    //return childrens;
  }

  ProductOperations productOperations = new ProductOperations();
  _loadProducts() {
    final List<String> urls = [
      'https://bestgadgetry.com/wp-content/uploads/apply-7.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/7139q+TZvRL._CR0,204,1224,1224_UX256.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/610ulNSSpJL._CR0,350,900,900_UX256.jpg',
      'https://1001freedownloads.s3.amazonaws.com/icon/thumb/360518/Smartphone-Android-Jelly-Bean-Sony-Xperia-ZL-icon.png',
      'https://i.pinimg.com/474x/c7/35/69/c73569c69626e3761c19ae6086792bd7.jpg'
    ];
    // It get the Product from the BackEnd
    for (int i = 1; i <= 5; i++) {
      productOperations.add(i, "Apple IPhone $i", urls[i - 1], 1000.0 * i);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: _getChildren(),
              // children: [
              //   _showProduct(),
              //   _showProduct(),
              //   _showProduct(),
              //   _showProduct()
              // ],
            ),
            Row(
              children: _getChildren(),
            )
          ],
        ),
      ),
    );
  }
}
