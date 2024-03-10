import 'package:flutter/material.dart';
import 'package:food_delivery2/modules/auth/ui/otp_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _nomerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Номер телефона",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 130,
              ),
              const Text(
                "Еmail или номер телефона",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TextFormField(
                  controller: _nomerController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: '',
                    prefixIcon: const Icon(Icons.mail_outline_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple.shade800),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: ElevatedButton(
                    child: const Center(
                      child: Text(
                        'Продолжить',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.purple.shade800,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OTPPAge()));
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


//  Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: ElevatedButton(
//             child: Center(
//               child: Text(
//                 'Продолжить',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             style: ElevatedButton.styleFrom(
//                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              
//                 backgroundColor: Colors.purple.shade800,
//                 fixedSize: Size(
//                   double.infinity,60.0
//                 )),
//             onPressed: () {}),
//       ),