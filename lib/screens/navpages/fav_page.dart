import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            ". FAVORITE LIST .",
            style: TextStyle(fontFamily: 'AbrilFatface'),
          ))),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.favorite,
              size: 70,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your favorite List is Empty",
              style: TextStyle(fontFamily: 'Roboto', color: Color(0xff4F4F4F)),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
                child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('mainav');
              },
              child: const Text(
                "CONTINUE SHOPPING",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w100),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 50)),
            )),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('login');
              },
              child: const Text(
                "SIGN IN ",
                style: TextStyle(
                    color: Colors.black, fontSize: 15, fontFamily: 'Roboto'),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(width: 1, color: Colors.black),
                padding: const EdgeInsets.symmetric(horizontal: 100),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
