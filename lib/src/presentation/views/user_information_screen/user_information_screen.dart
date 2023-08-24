import 'package:flutter/material.dart';
import 'package:practo/src/presentation/views/home_page/home_page.dart';
import 'package:practo/src/presentation/views/user_information_screen/personal_form.dart';

import 'medical_form.dart';

final GlobalKey<FormState> personalKey = GlobalKey<FormState>();
final GlobalKey<FormState> medicalKey = GlobalKey<FormState>();

void ontap() {
  if (personalKey.currentState!.validate()) {}
}

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            title: const Row(
              children: [
                Text(
                  "User Information",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(text: "Personal"),
              Tab(text: "Medical"),
              Tab(
                text: "Lifestyle",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              PersonalForm(
                personalKey: personalKey,
              ),
              MedicalForm(
                medicalKey: medicalKey,
              ),
              PersonalForm(
                personalKey: personalKey,
              ),
            ],
          )));
}
