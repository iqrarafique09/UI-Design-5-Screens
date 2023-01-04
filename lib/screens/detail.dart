import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({Key? key}) : super(key: key);

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  "Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 220, bottom: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()));
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.black,
                        size: 40,
                      )),
                ),
              ),
            ]),
            Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/home.jpg"),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 35, right: 110),
                      child: Text(
                        "CRAFTSMAN HOME",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 100),
                      child: Text(
                        "520 N Beaudry Ave, Los Angeles",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 60),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.bed,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text("4 Beds",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey)),
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
                                          fontSize: 15, color: Colors.grey)),
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
                                          fontSize: 15, color: Colors.grey)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage("assets/girlProfile.jpg"),
                          radius: 30,
                        ),
                        title: Row(
                          children: [
                            const Text(
                              "Rebecca Tetha",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black,
                                ),
                                child: Row(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.call,
                                                color: Colors.white,
                                                size: 15,
                                              )),
                                          const Text(
                                            "Call",
                                            // textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        subtitle: const Text(
                          "Owner Craftsman House",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 45, right: 45),
                      child: Text(
                        "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read more",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 225),
                      child: Text(
                        "Gallery",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 50,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                  image: AssetImage("assets/room.jpg"))),
                        ),

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 50,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                  image: AssetImage("assets/room.jpg"))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 50,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                  image: AssetImage("assets/room.jpg"))),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 50,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                      image: AssetImage(
                                    "assets/room.jpg",
                                  ))),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '+10',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35.0),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text("Price", style: TextStyle(fontSize: 20, color: Colors.black),),
            ),

            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 53),
                  child: Text("\$5990000", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // child: Center(child: const Text("BUY NOW", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:Colors.white),)),
                   child: Center(
                     child: TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen()));
                     },
                       child: const Text("BUY NOW", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:Colors.white)),
                   ),
                  ),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
