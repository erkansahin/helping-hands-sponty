import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helping_hands_sponty/application/auth/auth_cubit.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:helping_hands_sponty/domain/auth/blood_type.dart';

import '../../routes/router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  InputDecoration decoration = const InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    labelStyle: TextStyle(fontSize: 18),
  );

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  FocusNode buttonNode = FocusNode();

  @override
  void dispose() {
    phoneController.dispose();
    buttonNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listenWhen: ((previous, current) =>
            !previous.isLoginInProgress && current.isLoginInProgress),
        listener: (context, state) {
          if (!state.isLoginInProgress && state.userModel.name != "") {
            AutoRouter.of(context).navigate(
              const HomeRoute(),
            );
          }
        },
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: Text(
                      "Helping Hands",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
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
                          child: const Text("Phone Number"),
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
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        AutoRouter.of(context).navigate(
                          SignupRoute(),
                        );
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            if (state.isLoginInProgress) {
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
                                if (_formKey.currentState != null &&
                                    _formKey.currentState!.validate()) {
                                  await context.read<AuthCubit>().login(
                                        phoneController.text,
                                      );
                                }
                              },
                              child: const Text(
                                "Login",
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
