import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/cart_products.dart';
class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 3.0,
        backgroundColor: Colors.red,
        title: Text(
          "Shopping Cart",

          style: TextStyle(
              fontWeight: FontWeight.bold
          ),

        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search,color: Colors.white,),
          ),
        ],

      ),


      body: Cart_Products(),



      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
                  title: Text("Total"),
                  subtitle: Text("Ksh.550"),
                )),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 30),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text("Checkout",style: TextStyle(color: Colors.white),),
                  color: Colors.red,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}