import 'package:flutter/material.dart';
import 'package:food_delivery2/modules/auth/ui/sign_up_page.dart';

import 'package:food_delivery2/modules/home/ui/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                  "Добро пожаловать",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Для в хода в приложении Food Delivery, вам нужно набрать номер вашего телефона,и дождаться CMC сообщение с кодом авторизации. ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'введите имя пользователя',
                      prefixIcon: const Icon(Icons.person_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purple.shade800),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'введите свой пароль',
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purple.shade800),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.purple.shade800,
                      padding: const EdgeInsets.all(10),
                      fixedSize: const Size(double.infinity, 65)),

                  // color: Colors.purple.shade800,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Войти',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.navigate_next_sharp,
                        color: Colors.white,
                        size: 35,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Забыли  пароль?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.purple.shade800,
                          color: Colors.purple.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
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
                'Зарегистрироваться',
                style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(double.infinity, 65),
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.grey.shade200,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
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
