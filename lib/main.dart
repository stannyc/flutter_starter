import 'package:flutter/material.dart';
import 'package:flutter_starter/auth_builder.dart';
import 'package:flutter_starter/auth_widget.dart';
import 'package:flutter_starter/data/states/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AuthProvider>(
    create: (_) => AuthProvider(),
    child: RenderScreens(),
  ));
}

class RenderScreens extends StatefulWidget {
  RenderScreens({Key? key}) : super(key: key);

  @override
  _RenderScreensState createState() => _RenderScreensState();
}

class _RenderScreensState extends State<RenderScreens> {
  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      builder: (context, authStatus) {
        return MaterialApp(
          title: 'Flutter Starter',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AuthWidget(authStatus),
        );
      },
    );
  }
}
