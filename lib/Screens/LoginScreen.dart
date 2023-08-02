import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Register.dart';

class LoginScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  bool _hintIconVisible = true;

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
            size: 34,
          ),
        ),
      ),
      //
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image.asset(
                      "assest/images/logo.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                //
                _TextLoginForm(
                    "Welcome Back!", Colors.orange, 28, FontWeight.bold),
                const SizedBox(
                  height: 10,
                ),
                _TextLoginForm("Please Login to your Account",
                    Colors.black.withOpacity(0.6), 16, null),
                //
                const SizedBox(
                  height: 10,
                ),
                //textfield
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextField(
                    controller: _userNameController,
                    decoration: const InputDecoration(
                      hintText: "userName",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        _hintIconVisible = !_hintIconVisible;
                      });
                    },
                    controller: _passWordController,
                    decoration: InputDecoration(
                      hintText: "PassWord",
                      suffix: const Text("Forgot Password?"),
                      suffixIcon: _hintIconVisible
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                    obscureText: _hintIconVisible,
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                //
                ElevatedButton(
                  onPressed: () {
                    if (_userNameController.text == "root" &&
                        _passWordController.text == "123") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: const Center(child: Text("Login")),
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                    ),
                    const Text("OR"),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assest/images/fbLogo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                        child: Image.asset("assest/images/googleLogo.png"),
                      ),
                    ),
                  ],
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Resgister()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _TextLoginForm(
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
