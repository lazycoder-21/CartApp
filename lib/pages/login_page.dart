import 'package:flutter/material.dart';
import 'package:flutter_1/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/ankit.jpg",
              height: 250,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Email", labelText: "Email"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      //login button
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      child: changeButton? Icon(
                        Icons.done,
                        color: Colors.white,
                      ) : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 6),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //     style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
