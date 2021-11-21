import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Detalle del producto",
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
            Container(
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    offset: Offset(0, 4),
                    blurRadius: 10.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/cd6bed3b44e340938495ac7d0106ca60_9366/Tenis_Ultraboost_21_Amarillo_FY0373_01_standard.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "ADIDAS",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "ZAPATILLAS SUPERCOURI",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontFamily: 'Comfortaa-Bold'),
                  ),
                ),
                Icon(
                  CupertinoIcons.checkmark_seal_fill,
                  color: Colors.black54,
                  size: 20.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "S/ 299.00",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff121212),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text("0",style: TextStyle(fontSize: 20.0),),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff121212),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: Icon(
                          CupertinoIcons.plus,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 16),
            //       child: Text(
            //         "Tomemos un momento para rendir homenaje a un ícono. ¿Será la leyenda que desafiaba la gravedad en los años 80? ¿O tal vez las zapatillas que le daban estatus a los pies de raperos? De hecho, ambas. Las zapatillas adidas Forum han dominado las canchas de básquet y las calles, y ahora regresan con una versión de corte medio para llevar tus pasos a otro nivel. Envuelve tus pies con un estilo inconfundible en piel revestida prémium para un look que exude clase.",
            //         style: TextStyle(
            //           color: Colors.black54,
            //           fontSize: 18.0,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
