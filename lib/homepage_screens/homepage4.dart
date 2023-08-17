import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink.shade400,
        height: 470,
        width: 370,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/logo.svg',alignment: Alignment.center,height: 150,width: 150,color: Colors.white,
            ),
            Align(
              widthFactor: 1.30,
              child: SvgPicture.asset(
                'assets/doctor.svg',alignment: Alignment.center,height: 200,width: 150,
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
      ),
    );
  }
}
