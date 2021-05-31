import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/home_image.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: Text(
                      'Living Peacefully in Japan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      'There is so much peace around you especially if you consider silence a sign of peace! ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),offset: Offset(1,2),spreadRadius: 2,blurRadius: 20)]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16
                        ),
                        child: Text(
                          'Guide Me',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
