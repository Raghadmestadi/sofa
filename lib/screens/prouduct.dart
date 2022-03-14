import 'package:flutter/material.dart';

import 'custom_stepper.dart';

class Product extends StatelessWidget {
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            ". DETAILS .",
            style: TextStyle(fontFamily: 'AbrilFatface'),
          ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xfff4f5f3),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: Image.asset(
                    "assets/images/chair3.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Minmlist Chair',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w200)),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(207, 255, 255, 255),
                              ),
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.favorite,
                                size: 27,
                                color: Colors.red[700],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.ios_share_outlined,
                                size: 27,
                                color: Colors.grey[850],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icons/rstars.png',
                    width: 160,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet,sed do eiusmod tempor incididunt ut labor et dolore magna ullamco laboris nisi ut consequat ',
                          style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w200,
                              height: 1.5)),
                      TextSpan(
                          text: 'Read more',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold))
                    ])),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SAR 119 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold)),
                      CustomStepper(
                          lowerlimit: 0,
                          upperlimit: 20,
                          stepvalue: 1,
                          iconsize: 22,
                          value: this.qty,
                          onChanged: (value) {
                            print(value);
                          })
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('MemoList');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "ADD TO BAG ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  side: BorderSide(width: 1, color: Colors.black),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
