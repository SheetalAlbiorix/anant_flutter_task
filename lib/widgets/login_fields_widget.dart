import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String? Function(String?) emailValidator;
  final String? Function(String?) passwordValidator;

  const LoginFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.emailValidator,
    required this.passwordValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(labelText: 'E-Mail'),
          keyboardType: TextInputType.emailAddress,
          validator: emailValidator,
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
          validator: passwordValidator,
        ),
      ],
    );
  }
}
