import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:  10.0, left: 40, right: 40),
                child: Container(
                  height: 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF0734b5)
                  ),
                  child: const Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("assets/images/moi.jpeg"),
                          ),
                        ),
                      ),
          
                      SizedBox(height: 20,),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 35,),
                          Text(
                              "Mohamed    Kaba",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.work_outline,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 35,),
                          Text(
                              "Ingénieur    D'Etat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.computer,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                                "Dévélopper  Junior",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: 45,),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              "Flutter",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                          Text(
                              "Firebase",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                          Text(
                              "Sqlite",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                          Text(
                              "ApI Rest",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                              Icons.check_box,
                            color: Colors.greenAccent,
                            size: 30,
                          ),
                          Icon(
                              Icons.check_box,
                            color: Colors.greenAccent,
                            size: 30,
                          ),
                          Icon(
                              Icons.check_box,
                            color: Colors.greenAccent,
                          ),
                          Icon(
                              Icons.check_box,
                            color: Colors.greenAccent,
                            size: 30,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:  10.0, left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                        height: 70,
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  ListTile(
                          leading:  const Icon(
                            Icons.money,
                            color: Colors.black,
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                "Payments",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => null,
                            icon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black
                                  )
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF0734b5),
                                size: 25,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        height: 70,
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  ListTile(
                          leading:  const Icon(
                            Icons.food_bank_sharp,
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                "Banks",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => null,
                            icon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                  )
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF0734b5),
                                size: 25,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        height: 70,
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  ListTile(
                          leading:  const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              ""
                                  "Registrations",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => null,
                            icon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black
                                  )
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF0734b5),
                                size: 25,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        height: 70,
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  ListTile(
                          leading:  const Icon(
                            Icons.help,
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Helps",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => null,
                            icon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  )
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF0734b5),
                                size: 25,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        height: 70,
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  ListTile(
                          leading:  const Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => null,
                            icon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black
                                  )
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF0734b5),
                                size: 25,
                              ),
                            ),
                          ),
                        )
                    ),

                    const SizedBox(height: 8,),

                    Container(
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                        ),
                          onPressed: () => null,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(width: 15,),
                              Text(
                                  "Logout",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
