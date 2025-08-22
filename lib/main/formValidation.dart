import 'package:flutter/material.dart';
import 'package:flutter_demo/helper/validator.dart';
import 'package:flutter_demo/widgets/login_fields_widget.dart';

class FormValidationDemoWidget extends StatefulWidget {
  const FormValidationDemoWidget({super.key});

  @override
  State<FormValidationDemoWidget> createState() => _FormValidationDemoWidgetState();
}

class _FormValidationDemoWidgetState extends State<FormValidationDemoWidget> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text(
            "Successfully logged in", style: TextStyle(color: Colors.white)),
      ),
    );
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(
              "Form Validation in Flutter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Reusable login fields
            LoginFields(
              emailController: emailController,
              passwordController: passwordController,
              emailValidator: Validators.validateEmail,
              passwordValidator: Validators.validatePassword,
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Submit",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
