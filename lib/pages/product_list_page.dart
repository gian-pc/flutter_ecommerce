import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Lista de productos",
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w900,
              fontSize: 16.0),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://assets.adidas.com/images/w_600,f_auto,q_auto/6a0d6246e26a4852825dad3900baddfd_9366/Zapatillas_adidas_Ultraboost_x_LEGO(r)_Colors_Blanco_FZ3983_01_standard.jpg"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10.0,
                        top: 10.0,
                        child: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zapatillas Supercourt scwdcwcw",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff121212),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "S/. 299.00",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0,
                              color: Color(0xff121212),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://assets.adidas.com/images/w_600,f_auto,q_auto/6a0d6246e26a4852825dad3900baddfd_9366/Zapatillas_adidas_Ultraboost_x_LEGO(r)_Colors_Blanco_FZ3983_01_standard.jpg"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10.0,
                        top: 10.0,
                        child: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zapatillas Supercourt scwdcwcw",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff121212),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "S/. 299.00",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0,
                              color: Color(0xff121212),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://assets.adidas.com/images/w_600,f_auto,q_auto/6a0d6246e26a4852825dad3900baddfd_9366/Zapatillas_adidas_Ultraboost_x_LEGO(r)_Colors_Blanco_FZ3983_01_standard.jpg"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10.0,
                        top: 10.0,
                        child: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zapatillas Supercourt scwdcwcw",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff121212),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "S/. 299.00",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0,
                              color: Color(0xff121212),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://assets.adidas.com/images/w_600,f_auto,q_auto/6a0d6246e26a4852825dad3900baddfd_9366/Zapatillas_adidas_Ultraboost_x_LEGO(r)_Colors_Blanco_FZ3983_01_standard.jpg"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10.0,
                        top: 10.0,
                        child: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zapatillas Supercourt scwdcwcw",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff121212),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "S/. 299.00",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0,
                              color: Color(0xff121212),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
