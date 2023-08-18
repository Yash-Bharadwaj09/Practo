import 'package:flutter/material.dart';
import 'package:practo/homepage_screens/homepage3.dart';
import 'package:practo/homepage_screens/homepage5.dart';
import 'package:practo/homepage_screens/homepage4.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:practo/number.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class HomePage2 extends StatefulWidget {


  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
    final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Column(
                children: [
                  SizedBox(
                    height: 500,
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: _controller,
                      children: const [
                        HomePage3(),
                        HomePage4(),
                        HomePage5()
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: const SwapEffect(
                        type: SwapType.normal,
                        activeDotColor: Colors.grey,
                        dotColor: Colors.blue,
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 3
                      ),
                  ),
                       const SizedBox(height: 10),
                       const Text(
                      'Lets Get Started! Enter your Mobile Number',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.black87
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                        )
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyHomePage())
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Trouble Signing In?',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight:FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Colors.black87,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
