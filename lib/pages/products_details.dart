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
            footer: Container(color: Colors.white70,
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
                    child: Text(
                        "Ksh.${widget.product_detail_new_price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
            ),
          ),

          //=================the first Buttons========

          Row(
            children: [
              // ========the Size Button=====
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the Size"),
                            actions: [
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child:Text("Close",style: TextStyle(
                                  color: Colors.indigo
                                ),) ,)
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            "Size"
                          ),
                      ),

                      Expanded(
                        child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose your favorite color"),
                            actions: [
                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: Text(
                                    "Close",
                                style: TextStyle(
                                  color: Colors.red,
                                ),),
                              ),

                            ],
                          );
                        },

                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                            "Color"
                        ),
                      ),

                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),


              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose number of quantity"),
                            actions: [

                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                  "Close",
                              style: TextStyle(color: Colors.red),),)
                            ],
                          );
                        },);
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                            "Qty"
                        ),
                      ),

                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: [
              // ========the Size Button=====
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now")
                  ),
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add_shopping_cart),color: Colors.red,
              ),

              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border,color: Colors.red,)
              )


            ],
          ),




        ],
      ),

    );
  }
}
