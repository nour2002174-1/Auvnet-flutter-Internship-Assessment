import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/utils/elevated_button.dart';
import 'package:auvnet/features/home/home_view.dart';
import 'package:auvnet/features/sign_up/bloc/sign_up_bloc.dart';
import 'package:auvnet/features/sign_up/bloc/sign_up_event.dart';
import 'package:auvnet/features/sign_up/bloc/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpViewBody extends StatefulWidget {
  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    final pattern = r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
    return value == null || !RegExp(pattern).hasMatch(value) ? 'Enter a valid email' : null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Enter password';
    if (value.length < 8) return 'Min 8 chars';
    if (!RegExp(r'[A-Z]').hasMatch(value)) return 'Add uppercase letter';
    if (!RegExp(r'[a-z]').hasMatch(value)) return 'Add lowercase letter';
    if (!RegExp(r'[0-9]').hasMatch(value)) return 'Add number';
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) return 'Add special character';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration successful')));
           Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => HomeView()),
        );
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(AssetsData.splach_screen_image, height: 300, width: 300),
                _buildTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  validator: validateEmail,
                  icon: Icons.email,
                ),
                _buildTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obscure: true,
                  validator: validatePassword,
                  icon: Icons.lock,
                ),
                _buildTextField(
                  controller: confirmpasswordcontroller,
                  hintText: 'Confirm Password',
                  obscure: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "Re-enter your password";
                    if (value != passwordcontroller.text) return "Passwords do not match";
                    return null;
                  },
                  icon: Icons.lock,
                ),
                const SizedBox(height: 15),
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    final isLoading = state is SignUpLoading;
                    return Elevatedbuttons.blue_elevatedbutton(
                      text: isLoading ? 'Registering...' : 'Sign up',
                      onPressed: isLoading
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                context.read<SignUpBloc>().add(
                                      SignUpSubmitted(
                                        email: emailcontroller.text,
                                        password: passwordcontroller.text,
                                      ),
                                    );
                              }
                            },
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Already have an account?',
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
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    String? Function(String?)? validator,
    bool obscure = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade400, fontFamily: 'DMSans'),
          prefixIcon: Icon(icon, color: Colors.grey.shade600),
          filled: true,
          fillColor: const Color(0xffF6F5F3),
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
