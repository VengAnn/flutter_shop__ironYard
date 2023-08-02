import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  PageController _pageController = PageController(initialPage: 0);
  int currentIndexpage = 0;

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
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/bg.png"),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 480,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        currentIndexpage = value;
                      });
                    },
                    controller: _pageController,
                    children: [
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assest/images/onBoard1.png",
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                  ),
                                ),
                              ],
                            ),
                            //
                            const Text(
                              "Choose Your Clothes",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.orange,
                              ),
                            ),
                            //
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assest/images/onBoard2.png",
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                  ),
                                ),
                              ],
                            ),
                            //
                            const Text(
                              "Choose Your Clothes",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.orange,
                              ),
                            ),
                            //
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assest/images/onBoard3.png",
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                  ),
                                ),
                              ],
                            ),
                            //
                            const Text(
                              "Choose Your Clothes",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.orange,
                              ),
                            ),
                            //
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Container(
                        height: 500,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assest/images/onBoard4.png",
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                  ),
                                ),
                              ],
                            ),
                            //
                            const Text(
                              "Choose Your Clothes",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.orange,
                              ),
                            ),
                            //
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
            Positioned(
              top: 380,
              right: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndexpage == index
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(bottom: 40),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {
                    nextScreen();
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
            //
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(bottom: 40, right: 20),
                child: InkWell(
                  onTap: () {
                    print("on Skip");
                  },
                  child: const Text("Skip"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void nextScreen() {
    if (currentIndexpage == 3) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return LoginScreen();
        },
      ));
    } else {
      _pageController.animateToPage(currentIndexpage + 1,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }
}
