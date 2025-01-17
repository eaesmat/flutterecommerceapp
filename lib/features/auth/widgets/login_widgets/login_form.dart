
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/forgot_password/forgot_password_screen.dart';
import 'package:t_store/features/auth/screens/sign_up_screen/sign_up_screen.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct5),
              labelText: TTexts.email,
            ),
          ),
          // password
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check5),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
          // Remember me

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                onPressed: () => Get.to(()=> const ForgotPasswordScreen()),
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text(TTexts.signIn),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          // Create account button  in button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              child: const Text(TTexts.createAccount),
              onPressed: () => Get.to(()=> const  SignUpScreen()),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}