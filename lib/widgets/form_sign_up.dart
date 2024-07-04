import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project_grad_flutter/views/home_view.dart';
import 'package:final_project_grad_flutter/widgets/auth_text_form_field.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/login_view.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  bool obscureText = true;
  String name = '', email = '', password = '', confirmPassword = '';
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AuthTextFormField(
            hintText: 'Full Name',
            validator: (value) {
              if (value!.isEmpty) {
                return 'No filed Empty';
              }
            },
            onSaved: (value) {
              setState(() {
                name = value!;
              });
            },
          ),
          SizedBox(
            height: 16,
          ),
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
            },
          ),
          SizedBox(
            height: 16,
          ),
          AuthTextFormField(
            hintText: 'Password',
            controller: controllerPassword,
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
              icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
            ),
            obscureText: obscureText,
          ),
          SizedBox(height: 16),
          AuthTextFormField(
            hintText: 'Confirm Password',
            controller: controllerConfirmPassword,
            suffixIcon: IconButton(
              onPressed: () {
                obscureText = !obscureText;
                setState(() {});
              },
              icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
            ),
            obscureText: obscureText,
            validator: (value) {
              if (value!.isEmpty) {
                return 'No filed Empty';
              }else if(controllerConfirmPassword.text!=controllerPassword.text){
                return 'ConfirmPassword not equal password.';
              }
            },
            onSaved: (value) {
              setState(() {
                confirmPassword = value!;
              });
            },
          ),
          SizedBox(
            height: 16,
          ),
          CheckboxListTile(
            value: false,
            onChanged: (value) {},
            title: Text(
                'Send me special offers, personalized recommendations, and learning tips'),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          SizedBox(
            height: 16,
          ),
          isLoading == false?
          CustomButton(
            text: 'Sign Up',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                setState(() {
                  isLoading=true;
                });
                createUserWithEmailAndPassword(email: email,password: password);

              }
            },
          ): const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  void createUserWithEmailAndPassword({required String email, required String password}) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseFirestore firestore=FirebaseFirestore.instance;
      CollectionReference collectionReference =firestore.collection("users");
      await collectionReference.add({
        "email":email,
        "password":password,
        "name":name,
        "type":"User"
      });
      Navigator.pushReplacementNamed(context, LoginView.id);
      setState(() {
        isLoading=false;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('The password provided is too weak.')));
        setState(() {
          isLoading=false;
        });
      } else if (e.code == 'email-already-in-use') {

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('The account already exists for that email.')));
        setState(() {
          isLoading=false;
        });
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString())));
        setState(() {
          isLoading=false;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())));
      setState(() {
        isLoading=false;
      });
    }
  }
}
