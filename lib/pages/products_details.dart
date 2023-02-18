import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/products.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;


  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  }
  );



  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Fashion App",

          style: TextStyle(
              fontWeight: FontWeight.bold
          ),


        ),
        actions: [

          IconButton(
            onPressed: null,
            icon: Icon(Icons.search,color: Colors.white,),
          ),

          IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_cart,color: Colors.white,),
          ),

        ],

      ),

      body: ListView(
        children:<Widget> [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),

              ),
            footer: Container(color: Colors.white,
            child: ListTile(
              leading: Text(
                  widget.product_detail_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16.0
                ),

              ),
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                        "Ksh.${widget.product_detail_old_price}",
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(widget.product_detail_new_price),
                  ),
                ],
              ),
            ),
            ),
            ),
          ),

        ],
      ),

    );
  }
}
