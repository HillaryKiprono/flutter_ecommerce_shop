import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

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
      "oldPrice":"400",
      "price":"350",
    },
    {
      "name":"Pants",
      "picture":"images/products/pants2.jpeg",
      "oldPrice":"400",
      "price":"350",
    },
    {
      "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "oldPrice":"400",
      "price":"350",
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
        child: InkWell(
          onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            
            child: Image.asset(prod_picture),
            
          ),
        ),
      ),
    );
  }
}

