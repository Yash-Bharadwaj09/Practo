// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:practo/main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:flutter/cupertino.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Row(
              children: [
                IconButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.black87
                  ),
                  onPressed: (){
                    //
                  },
                  icon: const Icon(
                      Icons.question_mark_sharp,
                      size: 10,
                  ),
                  color: Colors.black87,
                  iconSize: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            const Center(
              widthFactor:1,
              child: Row(
                children: [
                  Text(
                      'Help',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
          leading:  IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 14,
                color: Colors.black,
              ),
              onPressed: (){
                //
              },

          )
      ),
      body: SafeArea(
        child: Column(
          children: [
                  const Row(
                    children: [
                      Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
              ),
                    ],
                  ),
            const SizedBox(
              height: 2,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                      Padding(
                          padding:  const EdgeInsets.all(10.0),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: "Phone Number",
                              hintText: "Enter Phone Number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black87,
                                )
                              )
                            ),
                          ),
                      ),
                    const SizedBox(
                      height: 12
                    ),
                    const Row(
                      children: [
                        InkWell(
                          child: Text(
                              'By continuing, You agree to our',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                              ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            //
                          },
                          child: const Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w500,
                                fontFamily: 'Roboto',
                                color: Colors.indigo,
                                decoration: TextDecoration.underline
                              ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:40 ,
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade400,
                        ),
                        onPressed: (){
                          //
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                    ),
                  ),
                ],
              ),
            )
              ],
        ),
      ),
    );
  }
}
