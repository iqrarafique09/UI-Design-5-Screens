import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/login.dart';
import 'package:property_trade_app/screens/splashScreen.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                      },
                          icon: Icon(Icons.arrow_back_sharp)),
                      const Padding(
                        padding: EdgeInsets.only(right: 180.0),
                        child: Text("Fill Your Profile", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 220,
                ),
                Stack(
                  children: [
                    Container(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/person.jpg"),
                        radius: 80,
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 20,
                        child: Icon(Icons.edit_rounded, color: Colors.white,),
                      ),
                    )
                  ],
                ),

              ],
            ),
              Container(
                height: 50,
                width: 350,
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                child: const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Nickname",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                child: const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Date of Birth",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.cake_outlined,color: Colors.grey,),
                      border: InputBorder.none
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                child: const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                      border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                child: const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Gender",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ConstrainedBox(
                  constraints:
                  const BoxConstraints.tightFor(height: 50, width: 350),
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => splashScreen()))
                      },
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text("Continue"))),
          ]
          ),
        ),
      ),
    );
  }
}
