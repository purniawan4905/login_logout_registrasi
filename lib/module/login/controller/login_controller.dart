import 'package:flutter/material.dart';
import 'package:login_logout_regitrasi/core.dart';
import 'package:login_logout_regitrasi/service/auth_service/auth_service.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  login() async {
    bool isLoggedIn = await AuthService().loginByEmail(
      email: email!,
      password: password!,
    );
  }
}
