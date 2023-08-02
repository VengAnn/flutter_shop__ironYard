import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Iron Yard".toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      //
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.grey[100],
                elevation: 0.2,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _TextOnHeader("Bless This Miss".toUpperCase(), 24,
                              Colors.black, FontWeight.bold, null),
                          //more text
                          _TextOnHeader(
                              "We pick Your Clothes give them \n a fresh look😮",
                              16.0,
                              Colors.black,
                              null,
                              TextAlign.start),
                          //
                          Container(
                            width: 80,
                            height: 30,
                            margin: const EdgeInsets.only(right: 10),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Container(
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == 0
                                            ? Colors.amber
                                            : Colors.grey,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                      //
                      ClipRRect(
                        child: Image.asset("assest/images/bannerImg.png"),
                      ),
                    ],
                  ),
                ),
              ),
              _TextOnHeader(
                "Services".toUpperCase(),
                24,
                Colors.black,
                FontWeight.w800,
                null,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assest/images/servicesImg.png",
                        ),
                        //
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _TextOnHeader(
                              "Iron only".toUpperCase(),
                              18,
                              Colors.black,
                              FontWeight.w400,
                              null,
                            ),
                            //
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text("Place Order😁"),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      //
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.list_bullet), label: "Order"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}

Widget _TextOnHeader(String text, double size, Color color, FontWeight? weight,
    TextAlign? textAlign) {
  return Text(
    "${text}",
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight,
    ),
    textAlign: textAlign,
  );
}
