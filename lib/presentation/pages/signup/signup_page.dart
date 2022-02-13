import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helping_hands_sponty/application/auth/auth_cubit.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:helping_hands_sponty/domain/auth/blood_type.dart';

import '../../routes/router.gr.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key, this.edit, this.user}) : super(key: key);
  final bool? edit;
  final AuthUserModel? user;

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
  TextEditingController emergencyContantNameController =
      TextEditingController();
  TextEditingController emergencyContantPhoneController =
      TextEditingController();
  FocusNode buttonNode = FocusNode();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emergencyContantNameController.dispose();
    emergencyContantPhoneController.dispose();
    buttonNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.edit != null && widget.edit == true) {
      nameController.text =
          phoneController.text = widget.user?.phoneNumber ?? '';
      bloodType = widget.user?.bloodType ?? BloodType.unknown;
      emergencyContantNameController.text =
          widget.user?.emergencyContactName ?? '';
      emergencyContantPhoneController.text =
          widget.user?.emergencyContactNumber ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listenWhen: ((previous, current) =>
            previous.isSignupInProgress && !current.isSignupInProgress),
        listener: (context, state) {
          if (!state.isSignupInProgress && state.userModel.name != "") {
            AutoRouter.of(context).navigate(
              const HomeRoute(),
            );
          }
        },
        child: SafeArea(
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton.icon(
                            onPressed: () => AutoRouter.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 24,
                            ),
                            label: Container(),
                          ),
                        ),
                        const Text(
                          "Helping Hands",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "We hope you don't ever need to use this app.\n\nThe information we request is only for the purpose of helping you in case of an emergency.",
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
                          validator: (val) {
                            if (val != null && val.isEmpty) {
                              return "Cannot be empty";
                            }
                            return null;
                          },
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
                            validator: (val) {
                              if (val != null && val == BloodType.unknown) {
                                return "Please select your blood type";
                              }
                              return null;
                            },
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
                          validator: (val) {
                            if (val != null && val.isEmpty) {
                              return "Cannot be empty";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text("Yakınınızın İsmi"),
                        ),
                        TextFormField(
                          decoration: decoration,
                          controller: emergencyContantNameController,
                          textInputAction: TextInputAction.next,
                          validator: (val) {
                            if (val != null && val.isEmpty) {
                              return "Cannot be empty";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text("Yakınınızın Telefonu"),
                        ),
                        TextFormField(
                          decoration: decoration,
                          controller: emergencyContantPhoneController,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          validator: (val) {
                            if (val != null && val.isEmpty) {
                              return "Cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            if (state.isSignupInProgress) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return MaterialButton(
                              focusNode: buttonNode,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              onPressed: () async {
                                if (!(_formKey.currentState != null &&
                                    _formKey.currentState!.validate())) {
                                  return;
                                }
                                final stateUser =
                                    BlocProvider.of<AuthCubit>(context)
                                        .state
                                        .userModel;

                                final user = stateUser.copyWith(
                                  name: nameController.text,
                                  phoneNumber: phoneController.text,
                                  bloodType: bloodType,
                                  emergencyContactName:
                                      emergencyContantNameController.text,
                                  emergencyContactNumber:
                                      emergencyContantPhoneController.text,
                                );

                                BlocProvider.of<AuthCubit>(context)
                                    .signUp(user);
                              },
                              child: const Text(
                                "Save",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              color: const Color(0xff47F443),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
