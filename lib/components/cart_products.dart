import 'package:flutter/material.dart';
class Cart_Products extends StatefulWidget {
  const Cart_Products({Key? key}) : super(key: key);

  @override
  State<Cart_Products> createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {

  var Products_on_the_cart=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "price":"85",
      "size":"M",
      "color":"Black",
      "Quantity":1
    },
    {
      "name":"Red Dress",
      "picture":"images/products/dress1.jpeg",
      "price":"375",
      "size":"L",
      "color":"Red",
      "Quantity":3
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context,index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color:Products_on_the_cart[index] ['color'],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );
      },

    );
  }
}

class Single_cart_product extends StatelessWidget {

  final  cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final  cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;


  Single_cart_product(
      {
        this.cart_prod_name,
        this.cart_prod_picture,
        this.cart_prod_price,
        this.cart_prod_size,
        this.cart_prod_color,
        this.cart_prod_qty
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //========Leading Section========
        leading: Image.asset(cart_prod_picture,),

        //==========Title section======
        title: Text(
            cart_prod_name
        ),


        //======Subtitle section==========
        subtitle: Column(
          children: [
            //row inside a column
            Row(
              children: [

                //SECTION  FOR THE SIZE OF THE PRODUCT
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                      "Size"
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(
                        color: Colors.red
                    ),
                  ),
                ),

                //========Thi section is for product Color=====

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color"),
                ),
                Padding(padding: EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(
                        color: Colors.red
                    ),
                  ),),

              ],

            ),

            //====This section is for the product  price=======
            Container(
              alignment: Alignment.topLeft,
              child: Text("\Ksh ${cart_prod_price}",
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                ),),
            )
          ],
        ),
        trailing: Expanded(
          child: new Column(
            children: [
              Expanded(child: new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))),
              new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),

            ],
          ),
        ),
      ),
    );
  }
}
