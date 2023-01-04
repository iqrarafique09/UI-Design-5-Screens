import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Text(
                      "Los Angeles, CA",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/girlProfile.jpg"),
                    radius: 23,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    "Discover Best",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                Text(
                  "Suitable Property",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13),
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: const Center(
                      child: Text(
                        "Appartment",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: const Center(
                      child: Text(
                        "Flat",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 13),
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 260),
            child: Text("Best for You", style: TextStyle(fontSize: 20, color: Colors.black),),
          ),
          const SizedBox(
            height: 10,
          ),

          Container(
            height: 290,
            width: 350,
            color: Colors.blueGrey,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            // ),
            child: Column(
              children: [
                Image.asset("assets/homee.jpg", height: 200,),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "CRAFTSMAN HOME",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    "520 N Beaudry Ave, Los Angeles",
                    style: TextStyle(fontSize: 15, color: Colors.white70),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.bed,
                              color: Colors.yellow,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("4 Beds",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white70)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.bathtub,
                              color: Colors.yellow,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("4 Baths",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white70)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.garage_sharp,
                              color: Colors.yellow,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("1 Garage",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white70)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text("Nearby your location ", style: TextStyle(fontSize: 20, color: Colors.black),),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/home.jpg", width: 120, )),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 64),
                        child: Text(
                          "RANCH HOME",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "520 N Beaudry Ave, Los Angeles",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.bed,
                              color: Colors.yellow,
                              size: 20,
                            ),
                          ),
                          Text("4 Beds",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey)),
                          Icon(
                            Icons.bathtub,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text("4 Baths",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey)),
                          Icon(
                            Icons.garage_sharp,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text("1 Garage",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.blueGrey,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "search",
            backgroundColor: Colors.blueGrey,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_outlined),
            label: "bookmark",
            backgroundColor: Colors.blueGrey,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label:"person",
            backgroundColor: Colors.blueGrey,
          ),
        ]
      ),
    );
  }
}
