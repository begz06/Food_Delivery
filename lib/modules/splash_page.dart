import 'package:flutter/material.dart';

import 'package:food_delivery2/modules/auth/ui/register_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const RegisterPage(),
          ),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.purple.shade400,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    
                  "Food",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold
                    ),
                ),
               
                Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold
                    ),
                ),
                 CircularProgressIndicator.adaptive(),
              ],
            ),
          )),
    );
  }
}
