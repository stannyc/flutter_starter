import 'package:flutter/material.dart';
import 'package:flutter_starter/data/states/auth_provider.dart';
import 'package:flutter_starter/enums/auth_status.dart';
import 'package:provider/provider.dart';

class AuthBuilder extends StatelessWidget {
  AuthBuilder({@required this.builder})
      : assert(
          builder != null,
        );

  final Widget Function(BuildContext, AuthStatus authStatus)? builder;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) {
        if (provider.authstatus == AuthStatus.authorized) {
          return MultiProvider(
            providers: [],
            child: builder!(context, provider.authstatus),
          );
        }
        return builder!(context, provider.authstatus);
      },
    );
  }
}
