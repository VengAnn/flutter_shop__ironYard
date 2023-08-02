import 'package:flutter/material.dart';
import 'package:learn_ui_design_with_yt/Screens/LoginScreen.dart';

import 'homescreen.dart';

class Resgister extends StatelessWidget {
  const Resgister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  "assest/images/logo.png",
                  height: 80,
                  width: 80,
                ),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              _TextSignInForm("Sign Up", Colors.amber, 26, FontWeight.bold),
              //
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "userName",
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "PhoneNumber",
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              //
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: const Center(child: Text("Sign Up")),
                    )),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By pressing sign up you agree to our"
                    "\nterms & conditions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              //
              const SizedBox(
                height: 200,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Aready have account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _TextSignInForm(
    String text, Color color, double size, FontWeight? weight) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: Text(
      // ignore: unnecessary_string_interpolations
      "$text",
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    ),
  );
}
