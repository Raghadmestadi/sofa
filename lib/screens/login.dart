import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 30),
                child: Text(
                  'Hello,',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 50),
                )),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 30),
              child: Text(
                'welcome back.',
                style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 50),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: " Username",
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: " password",
                    prefixIcon: Icon(Icons.lock_outline),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'if you have an account ',
                      style: TextStyle(
                          color: Color(0xff4F4F4F), fontFamily: 'Roboto'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('signup');
                      },
                      child: const Text(
                        'click here',
                        
                        style:
                        
                        TextStyle(
                         
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('mainav');
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 90)),
              ))
            ],
          )),
        )
      ],
    ));
  }
}
