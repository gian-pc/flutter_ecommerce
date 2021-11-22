import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Mi carrito",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://assets.adidas.com/images/w_600,f_auto,q_auto/28ebfae9407641f5b0ebacb6001fb210_9366/Zapatillas_Forum_Mid_TT_Blanco_FY4707_06_standard.jpg"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adidas", style: TextStyle(fontSize: 12.0),),
                    Text("ZAPATILLAS SUPERCOURT", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),),
                    Text("S/ 299.00", style: TextStyle(fontSize: 12.0),),
                    SizedBox(height: 4.0,),
                    Text("Remover",style: TextStyle(fontSize: 12.0,decoration: TextDecoration.underline),),
                  ],
                ),
                Column(
                  children: [
                    Text("Cant.", style: TextStyle(fontSize: 12.0)),
                    Text("2",style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    Text("Total", style: TextStyle(fontSize: 12.0)),
                    Text("2",style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
