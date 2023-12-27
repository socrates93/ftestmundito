import 'package:flutter/material.dart';

import 'package:testing/pages/home/homePage.dart';
import 'package:testing/pages/login/LoginPage.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => const LoginPage(),
  'home': (_) => const HomePage()
};
