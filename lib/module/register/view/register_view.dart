import 'package:flutter/material.dart';
import 'package:login_logout_regitrasi/core.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      // initialValue: 'admin@gmail.com',
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                      onChanged: (value) {
                        controller.email = value;
                      },
                    ),
                    TextFormField(
                      // initialValue: '123456',
                      maxLength: 20,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                      onChanged: (value) {
                        controller.password = value;
                      },
                    ),
                    Divider(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () => controller.register(),
                        child: const Text("Login"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () => Get.to(const RegisterView()),
                        child: const Text("Register"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
