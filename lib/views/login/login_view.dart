import 'package:dsw60251/utilis/app_colors.dart';
import 'package:dsw60251/utilis/app_images.dart';
import 'package:dsw60251/utilis/app_texts.dart';
import 'package:dsw60251/views/register/register_view.dart';
import 'package:dsw60251/views/widgets/basic_text_from_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 62),
                  Image.asset(AppImages.logo, width: 192, height: 192),
                  const SizedBox(height: 21),
                  const Align(
                    alignment: .topLeft,
                    child: Text(
                      AppTexts.signIn,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.purpleColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 46),
                  const BasicTextFormField(initialValue: 'xxxx'),
                  const SizedBox(height: 40),
                  const BasicTextFormField(initialValue: 'xxxx'),
                  ElevatedButton(
                    child: const Text('Open route'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      AppTexts.signUp,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
