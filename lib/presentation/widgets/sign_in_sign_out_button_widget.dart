import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class SignInSignOutButton extends StatelessWidget {
  final AuthController authController = Get.find();

  SignInSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (authController.isLoggedIn.value) {
        return IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () => authController.signOut(),
        );
      } else {
        return IconButton(
          icon: const Icon(Icons.login),
          onPressed: () => authController.signInWithGoogle(),
        );
      }
    });
  }
}
