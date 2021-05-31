import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japantravel/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.litewhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications,
                          size: 32,
                          color: Mycolor.deepblue,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextField(
                  decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Mycolor.deepblue),
                            child: InkWell(
                                onTap: () {},
                                child: Icon(Icons.search,
                                    color: Colors.white))),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[600]),
                      hintText: "Search Destination",
                      fillColor: Colors.grey.withOpacity(0.2)),
                ),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
