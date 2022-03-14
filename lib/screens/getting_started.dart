import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/gs.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Text(
                      'Sofa.',
                      style:
                          TextStyle(fontFamily: 'AbrilFatface', fontSize: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 13),
                    child: Text(
                      'Where you can find furniture for everyday comfort. ',
                      style: TextStyle(
                        color: Color(0xff4F4F4F),
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('signup');
                    },
                    child: const Text(
                      "Get started",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w200),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 12),
                    ),
                  ))
            ],
          )),
    ));
  }
}
