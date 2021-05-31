import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japantravel/color.dart';

class HomePage extends StatelessWidget {
  var chipIcons = [
    {
      "title": "Tokyo",
      "icon": Icons.airplanemode_on_sharp,
      "color": Mycolor.skyblue
    },
    {
      "title": "Singapur",
      "icon": Icons.airplanemode_on_sharp,
      "color": Mycolor.skyblue
    },
    {
      "title": "Dhaka",
      "icon": Icons.airplanemode_on_sharp,
      "color": Mycolor.skyblue
    },
    {
      "title": "London",
      "icon": Icons.airplanemode_on_sharp,
      "color": Mycolor.skyblue
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.litewhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.notifications,
                            size: 32,
                            color: Mycolor.deepblue,
                          )),
                    ),
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
                                child:
                                    Icon(Icons.search, color: Colors.white))),
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
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Search Destination",
                      fillColor: Colors.grey.withOpacity(0.2)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: chipIcons
                      .map((singleIcon) => ChipButton(
                            icon: singleIcon['icon'],
                            title: singleIcon['title'],
                            color: singleIcon['color'],
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChipButton extends StatelessWidget {
  final title;
  final icon;
  final color;
  const ChipButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      pressedOpacity: 0.1,
      onPressed: () {

      },
      padding: EdgeInsets.all(0),
      child: Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: this.color.withOpacity(0.3),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: this.color,
                ),
                child: Icon(
                  this.icon,
                  color: Colors.white,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 10),
              child: Text(
                this.title,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
