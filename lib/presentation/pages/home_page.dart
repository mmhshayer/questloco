import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questloco/presentation/widgets/sign_in_sign_out_button_widget.dart';

import '../controllers/auth_controller.dart';
import '../widgets/map_widget.dart';

class HomePage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          SignInSignOutButton(),
        ],
      ),
      body: const MapWidget(),
    );
  }
}
