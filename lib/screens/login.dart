import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'detail.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool passwordObscured = true;
  bool? checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/splashh.jpg'),
                radius: 70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Text(
                "Login to Your Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      // fillColor: Colors.grey[200],
                      filled: true,
                      fillColor: Colors.grey[200],
                      // contentPadding: EdgeInsets.symmetric(
                      //   horizontal: 45,
                      // ),
                      prefixIcon: const Icon(
                        Icons.email_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
                child: Container(
              width: 350,
              child: TextField(
                obscureText: passwordObscured,
                decoration: InputDecoration(
                    // fillColor: Colors.grey[200],
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            passwordObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        )),
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      activeColor: Colors.blue,
                      onChanged: (newBool) {
                        setState(() {
                          checkBoxValue = newBool;
                        });
                      }),
                  const Text(
                    "Remember me",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
            // ElevatedButton(onPressed: (){}, child: const Text("Sign in"))
            // RawMaterialButton(
            //   fillColor: Colors.blue[800],
            //   padding: const EdgeInsets.symmetric(vertical: 15.0),
            //   shape:
            //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //   onPressed: () {},
            //   child: const Center(
            //       child: Text(
            //     "Sign in",
            //     style: TextStyle(color: Colors.white),
            //   )),
            // ),
            ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(height: 50, width: 350),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => detailScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text("Sign in"))),
            const SizedBox(
              height: 5,
            ),
            // const Center(
            //   child: Text("Fogot the password?", style: TextStyle(fontSize: 20, color: Colors.blue),),
            // ),
            TextButton(
                onPressed: () {},
                child: const Text("Fogot the password?",
                    style: TextStyle(fontSize: 20, color: Colors.blue))),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "or continue with",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                 height: 45,
                  width: 50,
                   child: const Image(image: AssetImage("assets/fb.png")),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 35),
                  height: 45,
                  width: 50,
                  child: const Image(image: AssetImage("assets/google.png")),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 45,
                  width: 50,
                  child: const Image(image: AssetImage("assets/apple.png")),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Don't have an account?", style: TextStyle(fontSize: 18, color: Colors.grey[400]),)),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUP()));
                }, child: const Text('Sign Up',style: TextStyle(fontSize: 18, color: Colors.blue),))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
