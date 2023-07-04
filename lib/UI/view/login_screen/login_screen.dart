import 'package:dms_app/view_model/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../helper/costant/constant.dart';
import '../../../helper/costant/reactive_form_const.dart';
import '../../../helper/reusaple_componant/custom_button.dart';
import '../../../helper/reusaple_componant/custom_text_fiked.dart';
import '../../../network/cach_helper.dart';
import '../../../view_model/user_state.dart';

class LoginScreen extends StatefulWidget {
  static const route = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailCont = TextEditingController();

  final loginForm = FormGroup(
    {
      ReactiveConst.email:
          FormControl<String>(validators: [Validators.required]),
      ReactiveConst.password: FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    print(CacheHelper.sharedPreferences.containsKey("isAdmin") ||
        CacheHelper.sharedPreferences.containsKey("isOwner") ||
        CacheHelper.sharedPreferences.containsKey("isUser"));
    //   Size size = MediaQuery.of(context).size;
    return BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Center(
                child: Container(
                  height: 900,
                  child: ReactiveFormBuilder(
                    form: () => loginForm,
                    builder: (BuildContext context, FormGroup formGroup,
                            Widget? child) =>
                        Container(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 200,
                            // color: Colors.black,
                            //     width: size.width / 3,
                            child: Image.asset(
                              'assest/image/logo.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Center(
                            child: Text(
                              "Ataa'",
                              // /    textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm(
                              label: "E-Mail",
                              formControlName: ReactiveConst.email),
                          const SizedBox(height: 30),
                          CustomTextForm(
                            label: "Password",
                            formControlName: ReactiveConst.password,
                            //  obscureText: true,
                          ),
                          const SizedBox(height: 30),
                          addHorizontalSpace(w: 10),
                          customElevatedButtonWithIcon(
                            context,
                            function: () {
                              if (formGroup.valid) {
                                print(formGroup.value);
                                BlocProvider.of<UserCubit>(
                                  context,
                                  listen: false,
                                ).userLogin(
                                  context,
                                  email: formGroup.value[ReactiveConst.email],
                                  password:
                                      formGroup.value[ReactiveConst.password],
                                );
                              } else {
                                formGroup.markAllAsTouched();
                              }
                              // showCustomToaster("Pleas check The data");
                              // navigateToName(context, SpeakScreen.route);
                            },
                            title: 'Enter',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
