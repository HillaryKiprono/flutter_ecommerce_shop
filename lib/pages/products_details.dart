import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/products.dart';
import 'package:flutter_ecommerce_shop/main.dart';
import 'package:flutter_ecommerce_shop/pages/cart.dart';
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
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: Text(
            "Fashion App",

            style: TextStyle(
                fontWeight: FontWeight.bold
            ),


          ),
        ),
        actions: [

          IconButton(
            onPressed: null,
            icon: Icon(Icons.search,color: Colors.white,),
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
                              child: const Text(
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
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingCart()));
                },
                icon: Icon(Icons.add_shopping_cart),color: Colors.red,
              ),

              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border,color: Colors.red,)
              )


            ],
          ),


          Divider(),

          ListTile(
            title: Text("Product Details"),
            subtitle: Text("Lore,Ipsum is simply dummy text of Installation and configuration of network components.Cabling and laying of LAN cables.Firewall setup.IP addressing and Subnetting Troubleshooti Web design technology (HTML, CSS, PHP, Python).Database Management and administration (MYSQL, SQL, Access).Operating systems:"),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Name",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),)

            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Brand",
                  style: TextStyle(
                      color: Colors.grey
                  ),),
              ),

              // remember to  create the product brand

              Padding(
                padding: EdgeInsets.all(5),
                child: Text("Brand X"),
              ),

            ],
          ),
          //remember to create condition of the products
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text("Product Condition",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("New"),
              ),

            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products",style: TextStyle(color: Colors.deepOrange),),
          ),

          //Similar Products Section
          Container(
            height: 340.0,
            child: Similar_products(),
          )


        ],
      ),

    );
  }
}


class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var products_list=[
    {
      "name":"Red Dress",
      "picture":"images/products/dress1.jpeg",
      "oldPrice":"100",
      "price":"60",
    },

    {
      "name":"Shoes",
      "picture":"images/products/shoe1.jpg",
      "oldPrice":"700",
      "price":"550",
    },

    {
      "name":"Pants",
      "picture":"images/products/pants2.jpeg",
      "oldPrice":"250",
      "price":"200",
    },

    {
      "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "oldPrice":"300",
      "price":"250",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 ),
        itemBuilder: (BuildContext context,int index
            ){
          return Similar_Single_products (
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['oldPrice'],
            prod_price: products_list[index]['price'],
          );
        } );
  }
}


class Similar_Single_products extends StatelessWidget {
  final  prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Similar_Single_products(
      {
        this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price

      });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child:Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
              //here we are passing  the values of product to the product details page
                builder: (context)=>ProductDetails(
                    product_detail_name:prod_name,
                    product_detail_new_price:prod_price,
                    product_detail_old_price:prod_old_price,
                    product_detail_picture:prod_picture

                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                      ),

                    ),
                    Text("Ksh.${prod_price}",
                      style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                ),

              ),

              child: Image.asset(prod_picture),

            ),
          ),
        ),

      ),
    );
  }
}

