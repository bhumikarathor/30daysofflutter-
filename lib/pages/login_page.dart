import 'package:classicon_vs_code/utills/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/image.png",
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter username",
                    labelText: "username",
                  ),
                  onChanged: (value){
                    name = value;
                   setState(() {
                   });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "enter password",
                    labelText: "password",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds:1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width:changeButton ? 50: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child:changeButton ? Icon(Icons.done, color: Colors.white,)
                    : Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                     // shape: changeButton ? BoxShape.circle: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  
                  ),
                )
                //ElevatedButton(
                 // child: Text("login"),
                 // style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                  //nPressed: () {
                  //  Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //}
                //)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
