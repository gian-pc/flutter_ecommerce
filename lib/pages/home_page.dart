import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
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
                  hintStyle: TextStyle(
                    color: Color(0xff9D9EA0),
                  ),
                  filled: true,
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFF7B4D),
                          Color(0xffF72727),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF72727).withOpacity(0.6),
                          blurRadius: 7,
                          offset: Offset(0,4),
                        ),
                      ]
                    ),
                    child: Icon(Icons.search, color: Colors.white,),
                  ),
                  fillColor: Color(0xffF7F8FA),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
