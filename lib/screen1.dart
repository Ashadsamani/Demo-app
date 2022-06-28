import 'package:flutter/material.dart';
import 'package:product/main.dart';
import 'package:product/screen2.dart';
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  final Product =List<String>.generate(50, (i) => 'Product$i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: myCart.isNotEmpty?FloatingActionButton(
          elevation: 0.0,
          child: new Icon(Icons.shopping_cart_outlined,color:Colors.white,),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen2()),
            );
          }
      ):null,
      appBar: AppBar(title: const Text("Products List",style: TextStyle(),),

      ),
      body: ListView.builder(
          itemCount: Product.length,
          itemBuilder:( BuildContext context,int index){
            return ListTile(leading:Icon(Icons.card_giftcard),
              title: Text(Product [index]),
              onTap: (){
                //Add to Cart
                myCart.add(Product[index]);
                //Show Toast Notifications
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(Product [index]+" Added To cart!"),
                ));
                setState(() {

                });
              },
            );
          }
      ),
    );
  }
}
