// @dart=2.9
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// my own imports
import 'components/horizontal_listview.dart';
import 'components/products.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    )
  );
}
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_courosel= Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        NetworkImage('https://png.pngtree.com/png-clipart/20211201/ourmid/pngtree-black-business-mens-formal-suit-prototype-certificate-photo-png-image_4046389.png'),
        NetworkImage('https://purepng.com/public/uploads/large/purepng.com-suitclothingsuitfashion-people-men-dress-black-cloth-suit-vest-coat-waistcoat-631522327063pe2oh.png'),
        ExactAssetImage("https://i.pinimg.com/736x/1f/eb/00/1feb002749ce5d44d9f94f1b9f177754.jpg")
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 8.0,
      dotBgColor: Colors.red,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

    return  Scaffold(
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
      drawer: Drawer(
        child: ListView(
          children: [

            //header
            UserAccountsDrawerHeader(
                accountName: Text("Hillary"),
                accountEmail: Text("kipronohillary240@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey ,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),

            // body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                  "Home Page"
                ),
                leading: Icon(Icons.home,color: Colors.lightGreen,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "My Account"
                ),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "My Orders"
                ),
                leading: Icon(Icons.shopping_basket,color: Colors.indigo,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "Categories"
                ),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "Favourites"
                ),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "Settings"
                ),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(
                    "About",

                ),
                leading: Icon(Icons.help,color: Colors.blue,),
              ),
            ),

          ],
        ),

      ),

      body: new ListView(
        children: [
          image_courosel,
          Container(
            margin: EdgeInsets.only(left: 100),
            child: Padding(
              //padding widget begins here
                padding: EdgeInsets.all(8.0),

                 child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,backgroundColor: Colors.orange,fontSize: 20),),



            ),
          ),
          //horizontal list  begins here
          HorizontalList(),
          
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Recent Products",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,backgroundColor: Colors.orange,fontSize: 20),),
            ),
          ),

          //gridview
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),

    );
  }
}




