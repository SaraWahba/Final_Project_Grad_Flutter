import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    this.controller,
    this.validatorMassage,
    required this.hintText,
    this.onChanged,
    this.onSaved,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });
  final TextEditingController? controller;
  final String? validatorMassage;
  final String hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return validatorMassage ;
        } else {
          return null;
        }
      },
      // textAlign: TextAlign.center,
      onChanged: onChanged,
      onSaved: onSaved,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        // contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        border: buildBorder(),
        enabledBorder: buildBorder(color: Colors.black),
        focusedBorder: buildBorder(color: Colors.deepPurple),
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder buildBorder({
    Color? color,
  }) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: color ?? Colors.grey,
        )
    );
  }
}
