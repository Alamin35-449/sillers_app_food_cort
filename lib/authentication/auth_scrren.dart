import 'package:flutter/material.dart';
import 'package:sillers_app_food_cort/authentication/login.dart';
import 'package:sillers_app_food_cort/authentication/register.dart';

class auth_screen extends StatefulWidget {
  const auth_screen({Key? key}) : super(key: key);

  @override
  State<auth_screen> createState() => _auth_screenState();
}

class _auth_screenState extends State<auth_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // DefaultTab aita diye ager pagea fire jaoya jai
      length: 2, // Tab ar poriman baraite chaile length barate hobe
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              //app bar ar colors change korar jonno ai code lekha hoi
              gradient: LinearGradient(
                colors: [
                  Colors.cyan,
                  Colors.amber,
                ],
                begin: FractionalOffset(1.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
              ),
            ),
          ),
          title: const Text(
            'iFood',
            style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontFamily: "Lobster",
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            //appbar ar bitorei log in page ba keno register page rakhar jonno ai code use kora hoi
            tabs: [
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                text: "Login",
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                text: 'Register',
              ),
            ],
            indicatorColor: Colors.white60,
            indicatorWeight: 6,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.amber,
                Colors.cyan,
              ],
            ),
          ),
          child: const TabBarView(
            children: [
              login_screen(),
              register_screen(),
            ],
          ),
        ),
      ),
    );
  }
}
