import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Lets Get Started! Enter your Mobile Number',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                color: Colors.black87
            ),
          ),
          const SizedBox(height: 6),
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
              //
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

          const SizedBox(height: 16),
          Container(
            height: 400,
            width: 370,
            color: Colors.blue.shade900,
            child: SvgPicture.asset(
                "assets/image.svg",
                height: 10,
                width: 10,
              colorFilter: ColorFilter.mode(
                  Colors.transparent, BlendMode.lighten
              ),
            )
          )
        ],
      )
      ),
    );
  }
}
