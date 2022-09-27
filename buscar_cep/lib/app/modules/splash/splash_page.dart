import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      return  Navigator.pushReplacementNamed(context, AppRoutes.search);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

    );
  }
}
