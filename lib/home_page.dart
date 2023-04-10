import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questloco/sign_in_sign_out_button_widget.dart';

import 'auth_controller.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              if (authController.isLoggedIn.value) {
                return Text(
                  authController.user.value!.email.toString(),
                  style: Theme.of(context).textTheme.headlineSmall,
                );
              } else {
                return const Text(
                  'Not Logged In',
                  style: TextStyle(color: Colors.red),
                );
              }
            }),
            const Text(
              '0',
              style: TextStyle(fontSize: 32.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
