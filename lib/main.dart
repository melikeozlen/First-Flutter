import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constansts/colors.dart';

void main() {
  runApp(const MyApp());
}

class Item {
  final String icon;
  final String mainTitle;
  final String subTitle;

  Item(this.icon, this.mainTitle, this.subTitle);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<Item> contentList = [
      Item('lib/assets/images/category_1.png', 'Study lesson', ''),
      Item('lib/assets/images/category_3.png', 'Run 5k', '4:00pm'),
      Item('lib/assets/images/category_2.png', 'Go to pary', '10:00pm'),
    ];

    List<Item> complateContentList = [
      Item('lib/assets/images/category_2.png', 'Game meetup', '1:00pm'),
      Item('lib/assets/images/category_1.png', 'Take out trash', '')
    ];
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/header.png"),
                      fit: BoxFit
                          .cover), // Decoration Image// Saahip alanı kapsa
                ), // BoxDecoration
                width: deviceWidth,
                height: deviceHeight / 4,
                // color: const Color.fromRGBO(74, 55, 128, 1),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Text(
                        "October 20, 2022",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                        "My Todo List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -30),
                child: Column(
                  children: [
                    Container(
                        width: deviceWidth - 30,
                        height: deviceHeight / 3 - 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20.0), // Border radius değerini ayarlayın
                        ),
                        child: ListView.builder(
                            itemCount: contentList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromARGB(
                                              255, 236, 236, 236),
                                          width:
                                              1.0)), // Sadece alt tarafa border ekleyin
                                ),
                                child: ListTile(
                                  leading: Image.asset(
                                    contentList[index].icon,
                                    width: 40, // İstediğiniz genişlik
                                    height: 40, // İstediğiniz yükseklik
                                  ),
                                  title: Text(contentList[index].mainTitle),
                                  subtitle: Text(contentList[index].subTitle),
                                  trailing:
                                      Checkbox(value: false, onChanged: (a) {}),
                                ),
                              );
                            })),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 9.0),
                      child: Row(
                        children: [
                          Text("Completed",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: deviceWidth - 30,
                  height: deviceHeight / 4 - 27,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20.0), // Border radius değerini ayarlayın
                  ),
                  child: ListView.builder(
                      itemCount: complateContentList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromARGB(255, 236, 236, 236),
                                    width:
                                        1.0)), // Sadece alt tarafa border ekleyin
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              complateContentList[index].icon,
                              width: 40, // İstediğiniz genişlik
                              height: 40, // İstediğiniz yükseklik
                            ),
                            title: Text(
                              complateContentList[index].mainTitle,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 180, 180, 180),
                                  decoration: TextDecoration.lineThrough),
                            ),
                            subtitle: Text(
                              complateContentList[index].subTitle,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 180, 180, 180),
                                  decoration: TextDecoration.lineThrough),
                            ),
                            trailing: Checkbox(
                                value: true,
                                onChanged: (x) {},
                                activeColor: HexColor("#4A3780")),
                          ),
                        );
                      })),
              Container(
                  width: deviceWidth / 1.2,
                  height: 45,
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: HexColor("#4A3780"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text('Add New Task',
                        style: TextStyle(letterSpacing: 1.2)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
