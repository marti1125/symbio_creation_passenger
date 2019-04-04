import 'package:flutter/material.dart';
import 'model/product_model.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final List<Product> _allProduct = Product.allProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Tukuy Bus'),
        ),
        body: new Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: getProductBody(context),)
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: new Column(

          children: <Widget>[
            new ListTile(
              leading: new Image.asset(
                "assets/" + _allProduct[index].image,
                fit: BoxFit.fitHeight,
                width: 70.0,
                //height: 80.0,
              ),

              title: new Text(
                _allProduct[index].name,
                style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(_allProduct[index].name,
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('Precio: ${_allProduct[index].price}',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),

            )
          ],
        ));
  }

  getProductBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allProduct.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

}