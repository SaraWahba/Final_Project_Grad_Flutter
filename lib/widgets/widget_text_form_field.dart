import 'package:flutter/material.dart';
class WidgetTextFormField extends StatelessWidget {
  const WidgetTextFormField({
    super.key,
    this.controller,
    this.validatorMassage,
    required this.hintText,
    this.maxLines,
    this.onChanged,
    this.onSaved,
    this.keyboardType,
  });
  final TextEditingController? controller;
  final String? validatorMassage;
  final String hintText;
  final int? maxLines ;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ,
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
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        // contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        border: buildBorder(),
        enabledBorder: buildBorder(color: Colors.black),
        focusedBorder: buildBorder(color: Colors.deepPurple),
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