import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ecommerce/api/api_service.dart';
import 'package:flutter_codigo3_ecommerce/models/banner_model.dart';
import 'package:flutter_codigo3_ecommerce/models/brand_model.dart';
import 'package:flutter_codigo3_ecommerce/pages/product_list_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<BannerModel> listBanner = [];
  List<BrandModel> listBrand = [];
  APIService apiService = new APIService();

  @override
  initState() {
    super.initState();
    getData();
  }

  getData() {
    apiService.getBanners().then((value) {
      listBanner = value;
      setState(() {

      });
    });
    apiService.getBrands().then((value) => listBrand = value);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Gian Store",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  hintText: "Buscar producto",
                  hintStyle:
                      TextStyle(color: Color(0xff9D9EA0), fontSize: 14.0),
                  filled: true,
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff5581F1),
                          Color(0xff1153FC),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff1153FC).withOpacity(0.6),
                          blurRadius: 7,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  fillColor: Color(0xffF7F8FA),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductListPage()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.greenAccent,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff69EDA4),
                                Color(0xff21BE68),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff21BE68).withOpacity(0.6),
                                blurRadius: 7,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/sneaker.png"),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Zapatillas",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffC065DC),
                              Color(0xff5B2AF6),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff5B2AF6).withOpacity(0.6),
                              blurRadius: 7,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/tshirt.png"),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Ropa",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffFFCA53),
                              Color(0xffFF7D02),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFF7D02).withOpacity(0.6),
                              blurRadius: 7,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/cap.png"),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Accesorios",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 76,
                      width: 140,
                      margin:
                          EdgeInsets.only(right: 12.0, bottom: 12.0, left: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff5581F1),
                            Color(0xff1153FC),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1153FC).withOpacity(0.6),
                            blurRadius: 7,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Rapi Bank",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 220,
                      margin: EdgeInsets.only(right: 12.0, bottom: 12.0),
                      padding: EdgeInsets.only(left: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff131416),
                            Color(0xff404546),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pide tu tarjeta de crédito",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Te devolvemos hasta el 3% de tus compras",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 220,
                      margin: EdgeInsets.only(right: 12.0, bottom: 12.0),
                      padding: EdgeInsets.only(left: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff131416),
                            Color(0xff404546),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pide tu tarjeta de crédito",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Te devolvemos hasta el 3% de tus compras",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Promociones",
                    style: TextStyle(
                      color: Color(0xff212121),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 180.0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1500),
                    onPageChanged: (int index, _) {
                      _current = index;
                      setState(() {});
                    }),
                items: listBanner.map<Widget>((item) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          image: NetworkImage(item.image),
                          fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listBanner.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? Color.fromRGBO(0, 0, 0, 0.7)
                            : Color.fromRGBO(0, 0, 0, 0.15),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Marcas",
                    style: TextStyle(
                      color: Color(0xff212121),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              GridView.count(
                  crossAxisCount: 2,
                  primary: true,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: ScrollPhysics(),
                  children: listBrand
                      .map<Widget>((item) => ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.greenAccent,
                                  image: DecorationImage(
                                      image: NetworkImage(item.image),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff121212),
                                          Colors.transparent,
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment(0, 0.5),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item.brand,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      .toList()),
              SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
