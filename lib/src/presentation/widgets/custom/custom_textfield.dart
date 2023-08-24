import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isSuffixIconEnabled = false,
    this.validator,
  });

  final String hintText;
  final String labelText;
  final bool isSuffixIconEnabled;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        child: TextFormField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 8),
            labelText: labelText,
            labelStyle: const TextStyle(fontSize: 12),
            suffixIcon:
                isSuffixIconEnabled ? const Icon(Icons.person, size: 10) : null,
          ),
          validator: validator,
        ),
      ),
    );
  }
}
