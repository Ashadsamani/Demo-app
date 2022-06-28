import 'package:flutter/material.dart';
import 'package:product/main.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Cart ",style: TextStyle(),),
      ),
      body: ListView.builder(
          itemCount: myCart.length,
          itemBuilder:( BuildContext context,int index){
            return ListTile(leading:Icon(Icons.person),
              title: Text(myCart[index]),
            );
          }
      ),
    );
  }
}
