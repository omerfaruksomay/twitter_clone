import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/list_screens/twitter_lists_screen.dart';
import 'package:twitter_clone/screens/login/login_screen.dart';

class Routes {
  Routes._();
  static const mainPageRoute = '/';

  static const followingPageRoute = '/followings';

  static Route<dynamic> onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case mainPageRoute:
        return _route(const LoginScreen());
      case followingPageRoute:
        return _route(const TwitterListScreen());
      default:
        return _route(const Center(
          child: Text('Error'),
        ));
    }
  }

  static MaterialPageRoute _route(Widget child) => MaterialPageRoute(
        builder: (context) => child,
      );
}
