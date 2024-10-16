import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../my_flutter_app_icons.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({super.key});

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 10, bottom: 10),
          padding: EdgeInsets.all(10),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 1
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.dashboard_sharp,
            size: 20,
            color: Colors.black87,
          ),
        ),
        title: const Text(
            "Card Details",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 30),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFF0734b5).withOpacity(0.2),
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 30,),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                                Icons.add,
                              size: 30,
                              color: Color(0xFF0734b5),
                            )
                        ),
                        const Text(
                            "ADD NEW CARD",
                          style: TextStyle(
                            color: Color(0xFF0734b5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black12,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                        Icons.hdr_strong,
                      size: 15,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black12,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                        Icons.hdr_weak,
                      size: 15,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: 470,
                decoration: BoxDecoration(
                    color: Color(0xFF0734b5),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 35.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CupertinoSwitch(
                            value: false, // Current state of the CupertinoSwitch
                            onChanged: (value) {
                              setState(() {
                                //switchValue = value; // Update the CupertinoSwitch state
                              });

                            },

                          ),
                          const Text(
                              "\$2,687.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28
                            ),
                          ),
                        ],
                      ),
                    ),
                   const SizedBox(height: 20,),
                   const Padding(
                     padding: EdgeInsets.only(left: 25.0),
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Text(
                                 "skjunior Bank",
                               style: TextStyle(
                                 color: Colors.white70,
                                 fontSize: 13,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 5,),
                         Row(
                           children: [
                             Text(
                                 "3829    4820    4629    5025",
                               style: TextStyle(
                                 color: Colors.white70,
                                 fontSize: 20,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        SizedBox(width: 25,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UBA Africard",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "Mohamed Kaba",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 105,),

                        Column(
                          children: [
                            Text(
                              "Expire",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),

                            Text(
                              "05/22",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),


              SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: 450,
                      height: 50, // Ajuste la hauteur selon tes besoins
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Couleur de fond grise pour le Container
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    TabBar(
                      physics: AlwaysScrollableScrollPhysics(),
                      enableFeedback: true,
                      automaticIndicatorColorAdjustment: true,
                      indicatorPadding: EdgeInsets.all(3),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.blue,
                      indicatorWeight: 2,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.white, // Couleur de l'indicateur (onglet actif)
                        borderRadius: BorderRadius.circular(50),
                      ),
                      controller: tabController,
                      tabs: [
                        Tab(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 20), // Padding pour espacer le texte
                            child: Text(
                              "DAILY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 20), // Padding pour espacer le texte
                            child: Text(
                              "MONTHLY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),



              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            color: Color(0xFFffffff),
                            child:  Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.food_bank,
                                                size: 30,
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Food",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$54.20",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.shopping_basket_rounded,
                                                size: 30,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Shopping",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$20.20",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.local_taxi,
                                                size: 30,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Taxi",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$50.30",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SingleChildScrollView(
                          child: Container(
                            color: Color(0xFFffffff),
                            child:  Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.local_taxi,
                                                size: 30,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Taxi",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$500.30",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.house,
                                                size: 30,
                                                color: Colors.teal,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Logement",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "12:01 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$510.30",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.fitness_center,
                                                size: 30,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Fitness",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "20:20 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$150.30",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.food_bank,
                                                size: 30,
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Food",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$300.02",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            child: Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: const Icon(
                                                Icons.shopping_basket_rounded,
                                                size: 30,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 35,),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Shopping",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                              Text(
                                                "3:41 pm",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "-\$400.50",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
