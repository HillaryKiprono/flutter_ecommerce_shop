import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "images/cats/tshirt.png",
            image_caption: "Shirts",
          )
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),

      ),
    );
  }

}
