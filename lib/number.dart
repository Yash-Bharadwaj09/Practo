
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:practo/homepage_screens/homepage2.dart';
import 'package:practo/offerpage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
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
                const Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          //  const SizedBox(
          //    width: 5,
          //  ),
          ],
          leading:  IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 14,
                color: Colors.black,
              ),
              onPressed: (){
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const HomePage2())
                );
              },

          )
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          widthFactor: 1.25,
                          child: Text(
                          'Enter Your Mobile Number',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const OfferPage())
                            );
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
      ),
    );
  }
}
