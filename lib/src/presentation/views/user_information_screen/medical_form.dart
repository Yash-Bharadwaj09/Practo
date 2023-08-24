import 'package:flutter/material.dart';
import 'package:practo/src/presentation/widgets/custom/custom_textfield.dart';

class MedicalForm extends StatelessWidget {
  final dynamic medicalKey;
  final VoidCallback? onTap;

  const MedicalForm({
    super.key,
    required this.medicalKey,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Form(
          key: medicalKey,
          child: Column(
            children: [
              const CustomTextField(
                hintText: "if any",
                labelText: "Allergies",
              ),
              const CustomTextField(
                hintText: "if any",
                labelText: "Current Medications",
              ),
              const CustomTextField(
                hintText: "if any",
                labelText: "Past Medications",
              ),
              const CustomTextField(
                hintText: "if any",
                labelText: "Chronic Diseases",
              ),
              const CustomTextField(
                hintText: "if any",
                labelText: "Injuries",
              ),
              const CustomTextField(
                hintText: "if any",
                labelText: "Surgeries",
              ),
               SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: const ButtonStyle(),
                    onPressed: onTap,
                    child: const Text('Complete Profile')),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
