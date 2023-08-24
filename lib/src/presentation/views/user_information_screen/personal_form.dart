import 'package:flutter/material.dart';
import 'package:practo/src/presentation/widgets/custom/custom_textfield.dart';

String? _validateEmail(value) {
  if (value!.empty) {
    return 'Enter your Email-ID';
  }
  RegExp emailRegExp = RegExp(r'\S+@\S+\.\S+');
  if (!emailRegExp.hasMatch(value)) {
    return 'Enter a valid Email-ID';
  }
  return null;
}

String? _validateNumber(value) {
  if (value!.isEmpty) {
    return 'Enter a Phone Number';
  }
  if (value.length != 10) {
    return 'Enter a valid Phone Number';
  }
  return null;
}

class PersonalForm extends StatelessWidget {
  final dynamic personalKey;
  final VoidCallback? onTap;
  const PersonalForm({
    super.key,
    required this.personalKey,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Form(
          key: personalKey,
          child: Column(
            children: [
              const CustomTextField(
                hintText: "Name",
                labelText: "Enter Your Name",
                isSuffixIconEnabled: true,
              ),
              const CustomTextField(
                hintText: "Phone Number",
                labelText: "Enter Your Phone Number",
                validator: _validateNumber,
              ),
              const CustomTextField(
                hintText: "Email",
                labelText: "Enter Your Email",
                validator: _validateEmail,
              ),
              const CustomTextField(
                hintText: "ddmmyyyy",
                labelText: "Enter Your DOB",
              ),
              const CustomTextField(
                hintText: "Gender",
                labelText: "Enter Your Gender",
              ),
              const CustomTextField(
                hintText: "Blood Group",
                labelText: "Enter Your Blood Group",
              ),
              const CustomTextField(
                hintText: "Required",
                labelText: "Enter Your Marital Status",
              ),
              const CustomTextField(
                hintText: "in Ft & In",
                labelText: " Enter Your Height",
              ),
              const CustomTextField(
                hintText: "in Kg",
                labelText: "Enter Your Weight",
              ),
              const CustomTextField(
                hintText: "Name",
                labelText: "Please Enter Your Name",
              ),
              const CustomTextField(
                hintText: "Relation & PhoneNo",
                labelText: "Emergency Contact",
              ),
              const CustomTextField(
                hintText: "Location",
                labelText: "Enter Your Location",
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: const ButtonStyle(),
                    onPressed: onTap,
                    child: const Text(
                      'Complete Profile',
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
