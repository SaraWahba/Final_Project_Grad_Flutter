import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/widget_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class FormContactUs extends StatefulWidget {
  const FormContactUs({super.key});

  @override
  State<FormContactUs> createState() => _FormContactUsState();
}

class _FormContactUsState extends State<FormContactUs> {
  final TextEditingController _recipientNameController = TextEditingController();
  final TextEditingController _recipientEmailController = TextEditingController();
  final TextEditingController _recipientPhoneController = TextEditingController();
  final TextEditingController _recipientSubjectController = TextEditingController();
  final TextEditingController _recipientMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          WidgetTextFormField(
            hintText: 'Name*',
            keyboardType: TextInputType.name,
            controller: _recipientNameController,
          ),
          SizedBox(height: 16),
          WidgetTextFormField(
            hintText: 'Email*',
            keyboardType: TextInputType.emailAddress,
            controller: _recipientEmailController,
          ),
          SizedBox(height: 16),
          WidgetTextFormField(
            hintText: 'Phone',
            keyboardType: TextInputType.phone,
            controller: _recipientPhoneController,
          ),
          SizedBox(height: 16),
          WidgetTextFormField(
            hintText: 'Subject',
            keyboardType: TextInputType.text,
            controller: _recipientSubjectController,
          ),
          SizedBox(height: 16),
          WidgetTextFormField(
            hintText: 'Your Message',
            keyboardType: TextInputType.text,
            controller: _recipientMessageController,
            maxLines: 5,
          ),
          SizedBox(height: 16),
          CustomButton(
            text: 'Submit Now ->',
            onTap: () {
              _sendMessage(
                name: _recipientNameController.text,
                mail: _recipientEmailController.text,
                phone: _recipientPhoneController.text,
                subject: _recipientSubjectController.text,
                message: _recipientMessageController.text,
              );
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage({
    required String name,
    required String mail,
    required String phone,
    required String subject,
    required String message,
  }) async {
    String username = 'wsara9223@gmail.com'; // Change to your email
    String password = 'your-password'; // Change to your password
    final smtpServer = gmail(username, password);

    final emailMessage = Message()
      ..from = Address(username, 'Mail Service')
      ..recipients.add('wsara9223@gmail.com') // Change to the recipient's email
      ..subject = 'Mail from $name: $subject'
      ..text = 'Name: $name\nEmail: $mail\nPhone: $phone\n\n$message';

    try {
      await send(emailMessage, smtpServer);
      showSnackbar('Email sent successfully');
    } catch (e) {
      print(e.toString());
      showSnackbar('Failed to send email');
    }
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: FittedBox(
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
