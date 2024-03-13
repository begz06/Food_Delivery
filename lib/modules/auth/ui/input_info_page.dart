import 'package:flutter/material.dart';

class InputInfoPage extends StatefulWidget {
  const InputInfoPage({super.key});

  @override
  State<InputInfoPage> createState() => _InputInfoPageState();
}

class _InputInfoPageState extends State<InputInfoPage> {
  TextEditingController _infoUsername = TextEditingController();
  TextEditingController _infoPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 25, left: 25, top: 5, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Регистрация",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                const Text(
                  "ФИО",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _infoUsername,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Figmachini ismi bor ekan😂',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple.shade800),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Дата рождения",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _infoPassword,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: 'Введите дату рождения',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple.shade800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
