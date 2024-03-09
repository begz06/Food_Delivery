import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
   TextEditingController  _nomerController = TextEditingController();
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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
              ElevatedButton(
                  child: const Center(
                    child: Text(
                      'Продолжить',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.purple.shade800,
              ),
                  onPressed: () {}),
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