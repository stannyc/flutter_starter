import 'package:flutter/material.dart';
import 'package:flutter_starter/data/states/app_provider.dart';
import 'package:flutter_starter/enums/auth_status.dart';
import 'package:flutter_starter/ui/auth/login_screen.dart';
import 'package:flutter_starter/ui/root_screen.dart';
import 'package:provider/provider.dart';

class AuthWidget extends StatelessWidget {
  AuthWidget(this.authStatus);

  final AuthStatus authStatus;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        if (authStatus == AuthStatus.authorized) {
          return RootScreen();
        }
        return LoginScreen();
      },
    );
  }
}
