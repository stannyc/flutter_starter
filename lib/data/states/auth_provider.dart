import 'package:flutter/cupertino.dart';
import 'package:flutter_starter/enums/auth_status.dart';

class AuthProvider with ChangeNotifier {
  //set initial auth status as unknown
  AuthStatus authstatus = AuthStatus.unknown;
}
