import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../my_flutter_app_icons.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> items = [
    {
      'icon': MyFlutterApp.paper_plane,
      'text1': 'Send',
      'color': Colors.pink,
      'text2': 'Money',
      'text3': 'To acc To acc',
    },
    {
      'icon': MyFlutterApp.robot,
      'color': Colors.blue,
      'text1': 'Recive',
      'text2': 'Money',
      'text3': 'Manage Account',
    },
    {
      'icon': Icons.credit_card,
      'color': Colors.purple,
      'text1': 'Mobile',
      'text2': 'Prepaid',
      'text3': 'Recharge Mobile',
    },
    {
      'icon': Icons.food_bank,
      'color': Colors.amber,
      'text1': 'Bank to',
      'text2': 'Bank',
      'text3': 'Send Money',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        appBar: MyCustomAppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFf5f5f5),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                height: 170,
                width: 470,
                decoration: BoxDecoration(
                    color: Color(0xFF0734b5),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Balance",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                    "\$2,687.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(
                                  onPressed: () => null,
                                  icon: const Icon(
                                      Icons.add,
                                    size: 35,
                                      color: Color(0xFF0734b5),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 20,),


              Expanded(
                child: Container(
                  color: Color(0xFFf5f5f5),

                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      items.length,
                          (index) {
                        return Center(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,
                            ),
                            height: 280,
                            width: 170,
                            child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 88.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFf5f5f5),
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Icon(
                                      items[index]['icon'],
                                      color: items[index]['color'],
                                      size: 18,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 80.0, left: 10, top: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        items[index]['text1'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80.0, left: 10),
                                  child: Row(
                                    children: [
                                      Text(

                                        items[index]['text2'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40.0, left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        items[index]['text3'],
                                        style:  TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(140.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            color: Color(0xFFf5f5f5),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    height: 60,
                    width: 60,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/moi.jpeg"),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(left: 2),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Hello Sk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45
                            ),
                          ),
                          Text(
                              "Welcom Back!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 200,),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications,
                        ),
                      )
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),

          Positioned(
            top: 80.0, // Positionnement de la barre de recherche
            left: 0.0,
            right: 0.0,
            child: Container(
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(80.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 32,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





