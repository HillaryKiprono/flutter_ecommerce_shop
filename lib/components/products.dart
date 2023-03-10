import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/pages/products_details.dart';

class Products extends StatefulWidget {
   Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "oldPrice":"120",
      "price":"85",
    },
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
      "price":"210",
    },
    {
      "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "oldPrice":"300",
      "price":"250",
    },
    {
      "name":"Skirts",
      "picture":"images/products/skt2.jpeg",
      "oldPrice":"380",
      "price":"295",
    },

    {
      "name":"Skirts",
      "picture":"images/products/skt2.jpeg",
      "oldPrice":"400",
      "price":"350",
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
        return Single_products(
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['oldPrice'],
            prod_price: products_list[index]['price'],
        );
        } );
  }
}

class Single_products extends StatelessWidget {
final  prod_name;
final prod_picture;
final prod_old_price;
final prod_price;


Single_products(
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
                child: ListTile(
                  leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text("Ksh.$prod_price",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),),
                  subtitle: Text(
                    "Ksh. $prod_old_price",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough
                    ),
                  ),
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

