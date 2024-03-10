import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery2/modules/auth/ui/input_info_page.dart';


class OTPPAge extends StatefulWidget {
  const OTPPAge({super.key});

  @override
  State<OTPPAge> createState() => _OTPPAgeState();
}

class _OTPPAgeState extends State<OTPPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
            right: 25.0, left: 25.0, top: 15.0, bottom: 15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Код подтверждения",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 130,
              ),
              Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      // validator: (valname) => valname!.lenght <6?"Код ошибки",
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin2) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin3) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin4) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin5) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54,
                    height: 58,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin6) {},
                      decoration: InputDecoration(
                          hintText: "0",
                          
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.purple.shade800))),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25,top: 5,bottom: 5),
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
              foregroundColor: Colors.purple.shade800,
              fixedSize: const Size(double.infinity, 65),
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.purple.shade400,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const InputInfoPage() ));
            }),
      ),
    );
  }
}
