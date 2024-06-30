import 'package:final_project_grad_flutter/widgets/auth_text_form_field.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../views/home_view.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});
  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool obscureText = true;
  String email = '', password = '';
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            AuthTextFormField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'No filed Empty';
                  } else if (!(RegExp(r'\S+@\S+\.\S+').hasMatch(value))) {
                    return 'the email not match this "example@gamil.com"';
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                }),
            const SizedBox(
              height: 16,
            ),
            AuthTextFormField(
              hintText: 'Password',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'No filed Empty';
                }
              },
              onSaved: (value) {
                setState(() {
                  password = value!;
                });
              },
              suffixIcon: IconButton(
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                icon:
                    Icon(obscureText ? Icons.visibility : Icons.visibility_off),
              ),
              obscureText: obscureText,
            ),
            const SizedBox(
              height: 16,
            ),
            isLoading == false
                ? CustomButton(
                    text: 'Login',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        setState(() {
                          isLoading = true;
                        });
                        signInWithEmailAndPassword(
                            password: password, email: email);
                      }
                    })
                : const Center(child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }

  void signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacementNamed(context, HomeView.id);
      setState(() {
        isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
