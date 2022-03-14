import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title:Center(child: Text(". SHOPPING BAG .",style: TextStyle(fontFamily: 'AbrilFatface'),))),
      body: Center(
        child: Container(
    child: Column(mainAxisAlignment:MainAxisAlignment.center , children:[Icon(Icons.shopping_bag ,size: 70,color: Colors.grey[400],),SizedBox(height: 10,), Text("Your Shopping bag is currently empty!",style: TextStyle(fontFamily: 'Roboto', color: Color(0xff4F4F4F)),), SizedBox(height: 15,),Container(child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed('MemoList');
               } ,child: const Text("START SHOPPING",style: TextStyle(fontSize: 15 , fontFamily: 'Roboto'),) , style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                 padding: const EdgeInsets.symmetric(horizontal: 50)
                
               ), ) )]),
          
        ),
      ),
    );
  }
}