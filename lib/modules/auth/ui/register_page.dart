import 'package:flutter/material.dart';
import 'package:food_delivery2/modules/auth/ui/otp_page.dart';
import 'package:food_delivery2/modules/auth/ui/shkeraksiz_signup_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _gmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 25.0, left: 25.0, top: 15, bottom: 15),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Номер телефона",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 125,
                ),
                Text(
                  "Номер телефона",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: _gmailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixText: '+998 ',
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purple.shade800),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, top: 5, bottom: 5),
        child: ElevatedButton(
            child: Center(
              child: Text(
                'Продолжить',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(double.infinity, 65),
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.purple.shade800,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OTPPAge()));
            }),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(

      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => LogInPage()));
      //   },
      //   backgroundColor: Colors.grey.shade200,
      //   child: Text(
      //     'Зарегистрироваться',
      //     style: TextStyle(
      //       color: Colors.purple.shade800,
      //       fontSize: 17,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      // ),
    );
  }
}
