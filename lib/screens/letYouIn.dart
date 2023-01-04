import 'package:flutter/material.dart';

import 'login.dart';

class letYouIn extends StatefulWidget {
  const letYouIn({Key? key}) : super(key: key);

  @override
  State<letYouIn> createState() => _letYouInState();
}

class _letYouInState extends State<letYouIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                },
                    icon: Icon(Icons.arrow_back_sharp)),
              ],
            ),
          )
      ),
    );
  }
}
