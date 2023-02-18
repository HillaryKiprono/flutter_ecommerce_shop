import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Welcome",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
