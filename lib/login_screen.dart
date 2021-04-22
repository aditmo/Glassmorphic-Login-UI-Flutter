import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 16.0,
                    spreadRadius: 16.0,
                    color: Colors.black.withOpacity(0.4))
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 16.0,
                    sigmaY: 16.0,
                  ),
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.4),
                                    width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.4),
                                    width: 1),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      color: Colors.white.withOpacity(0.4)),
                                  elevation: 4,
                                  primary: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  " Login  -> ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.8)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Forgot Password  ?   |    Sign Up ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            "Sign in using ",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset(
                                'assets/logo/l1.svg',
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset(
                                'assets/logo/l3.svg',
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset(
                                'assets/logo/l2.svg',
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
