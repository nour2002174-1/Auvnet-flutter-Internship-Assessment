import 'package:auvnet/features/login/bloc/login_bloc.dart';
import 'package:auvnet/features/login/bloc/login_event.dart';
import 'package:auvnet/features/login/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/utils/elevated_button.dart';
import 'package:auvnet/features/home/home_view.dart';
import 'package:auvnet/features/sign_up/view/sign_up_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginViewBody extends StatefulWidget {
  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginBloc>().state;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state is LoginSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login successful')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => HomeView()),
        );
      } else if (state is LoginFailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error)),
        );
      }
    });

    final bool isLoading = state is LoginLoading;

    return SingleChildScrollView(
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
             
                  Image.asset(
                    AssetsData.splach_screen_image,
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                
              SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email, color: Colors.grey.shade600),
                    filled: true,
                    fillColor: const Color(0xffF6F5F3),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.grey.shade600),
                    filled: true,
                    fillColor: const Color(0xffF6F5F3),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Elevatedbuttons.blue_elevatedbutton(
                text: isLoading ? 'Loading...' : 'Log in',
                onPressed: isLoading
                    ? null
                    : () {
                        if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Please enter email & password')),
                          );
                        } else {
                          context.read<LoginBloc>().add(LoginSubmitted(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              ));
                        }
                      },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Sign_upview()));
                },
                child: Text(
                  'Create an account',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff1877F2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
