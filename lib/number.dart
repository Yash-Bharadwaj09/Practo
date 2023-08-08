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
            IconButton(
              onPressed: (){
                //
              },
              icon: const Icon(
                  Icons.question_mark_sharp,
                  size: 10,
              ),
              color: Colors.black87,
            ),
            const SizedBox(
              width: 12,
              height: 16,
            ),
            const Center(
              child: Text(
                  'Help',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
          leading: const Icon(
              Icons.arrow_back,
              color: Colors.black87,
              size: 16,
          )
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
              child: Text(
                  'Enter Your Mobile Number',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
              ),
            ),
            const SizedBox(
              height: 16,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade400),
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
            )
              ],
        ),
      ),
    );
  }
}
