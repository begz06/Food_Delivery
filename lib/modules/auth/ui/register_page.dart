import 'package:flutter/material.dart';
import 'package:food_delivery2/modules/auth/ui/log_in_page.dart';
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
      body: Padding(
        padding: EdgeInsets.only(right: 25.0, left: 25.0, top: 15, bottom: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Добро пожаловать",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Для в хода в приложении Food Delivery, вам нужно набрать номер вашего телефона,и дождаться CMC сообщение с кодом авторизации. ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'введите имя пользователя',
                  prefixIcon: Icon(Icons.person_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.purple.shade800),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'введите свой пароль',
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.purple.shade800),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.purple.shade800,
                    padding: EdgeInsets.all(10),
                    fixedSize: Size(double.infinity, 65)),

                // color: Colors.purple.shade800,
                child: Row(
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
              SizedBox(
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
              Spacer(),
              ElevatedButton(
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.grey.shade200,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInPage()));
                  }),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
