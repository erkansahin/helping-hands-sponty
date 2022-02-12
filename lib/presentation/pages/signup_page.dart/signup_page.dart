import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_sponty/domain/auth/blood_type.dart';

import '../../routes/router.gr.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  InputDecoration decoration = const InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    labelStyle: TextStyle(fontSize: 18),
  );

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  BloodType bloodType = BloodType.unknown;
  TextEditingController relativeNameController = TextEditingController();
  TextEditingController relativePhoneController = TextEditingController();
  FocusNode buttonNode = FocusNode();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    relativeNameController.dispose();
    relativePhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Text(
                    "Helping Hands",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "Umariz ki bu uygulamaya kimsenin ihtiyaci olmasin.\n\nYine de ehemiyeti elden birakmamakta yarar var.\n\nAsagidaki bilgileriniz sadece ve sadece bir gun tehlikede olursaniz size yardim edebilecek kisiler ile paylasilacaktir.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 40),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Isminiz",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      TextFormField(
                        decoration: decoration,
                        controller: nameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Kan Grubu"),
                      ),
                      Container(
                        child: DropdownButtonFormField<BloodType>(
                          isExpanded: true,
                          value: bloodType,
                          items: const [
                            DropdownMenuItem(
                              child: Text("A+"),
                              value: BloodType.apositive,
                            ),
                            DropdownMenuItem(
                              child: Text("A-"),
                              value: BloodType.anegative,
                            ),
                            DropdownMenuItem(
                              child: Text("B+"),
                              value: BloodType.bpositive,
                            ),
                            DropdownMenuItem(
                              child: Text("B-"),
                              value: BloodType.bnegative,
                            ),
                            DropdownMenuItem(
                              child: Text("AB+"),
                              value: BloodType.abpositive,
                            ),
                            DropdownMenuItem(
                              child: Text("AB-"),
                              value: BloodType.abnegative,
                            ),
                            DropdownMenuItem(
                              child: Text("O+"),
                              value: BloodType.opositive,
                            ),
                            DropdownMenuItem(
                              child: Text("O-"),
                              value: BloodType.onegative,
                            ),
                            DropdownMenuItem(
                              child: Text("Prefer not to say"),
                              value: BloodType.unknown,
                            ),
                          ],
                          onChanged: (type) {
                            if (type != null) {
                              setState(() {
                                bloodType = type;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Telefon Numaranız"),
                      ),
                      TextFormField(
                        decoration: decoration,
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Yakınınızın İsmi"),
                      ),
                      TextFormField(
                        decoration: decoration,
                        controller: relativeNameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Yakınınızın Telefonu"),
                      ),
                      TextFormField(
                        decoration: decoration,
                        controller: relativePhoneController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        focusNode: buttonNode,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        onPressed: () {
                          AutoRouter.of(context).navigate(
                            const HomeRoute(),
                          );
                        },
                        child: const Text(
                          "Kaydet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        color: const Color(0xff47F443),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
