import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilearningapp/pages/sign_in/bloc/signin_blocs.dart';
import 'package:ilearningapp/pages/sign_in/bloc/signin_events.dart';
import 'package:ilearningapp/pages/sign_in/bloc/signin_states.dart';
import 'package:ilearningapp/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: BuildAppBar(),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThirdPartyLogin(context),
                  Center(
                      child:
                          reusableText('Or use your email account to login')),
                  Container(
                    margin: EdgeInsets.only(top: 35.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText("Email"),
                        SizedBox(height: 5.h),
                        buildTextfield(
                            "Enter your email address", "email", "user",
                            (value) {
                          context.read<SignInBloc>().add(EmailEvent(value));
                        }),
                        reusableText("password"),
                        SizedBox(height: 5.h),
                        buildTextfield(
                            "Enter your password", "password", "lock", (value) {
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        }),
                        forgotPassword(),
                        buildLoginandRegButton("Log In", "login"),
                        buildLoginandRegButton("Register", "register"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
