import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:practo/src/presentation/views/home_page/home_page.dart';
import 'package:practo/src/presentation/views/phone_login/phone_login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _controller,
                children: [
                  _buildTopView(
                    screenColor: Colors.blue.shade900,
                  ),
                  _buildTopView(
                    screenColor: Colors.pink.shade400,
                  ),
                  _buildTopView(
                    screenColor: Colors.red.shade300,
                  ),
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
                spacing: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Lets Get Started! Enter your Mobile Number',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IntlPhoneField(
                      initialCountryCode: "IN",
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          hintText: "Enter Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhoneLogin()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Trouble Signing In?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        color: Colors.black87,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  _buildTopView({required Color screenColor}) {
    return Container(
      color: screenColor,
      height: 470,
      width: 370,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/logo.svg',
            alignment: Alignment.center,
            height: 150,
            width: 150,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/doctor.svg',
              alignment: Alignment.center,
              height: 200,
              width: 150,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Center(
            child: Text(
              'Video consult top doctors from the comfort of your home',
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
