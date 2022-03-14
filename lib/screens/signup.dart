import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            reverse: true,
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 50),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Username",
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " email",
                      prefixIcon: Icon(Icons.mail_outline),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " phone",
                      prefixIcon: Icon(Icons.local_phone_outlined),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: " password",
                      prefixIcon: Icon(Icons.lock_outline),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        'if you have an account ',
                        style: TextStyle(
                            color: Color(0xff4F4F4F), fontFamily: 'Roboto'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('login');
                        },
                        child: Text(
                          'click here',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('mainav');
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 100)),
                ))
              ],
            )),
      ),
    );
  }
}
