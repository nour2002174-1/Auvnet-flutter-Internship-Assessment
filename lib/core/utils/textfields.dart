/* import 'package:flutter/material.dart';

Widget loginTextFieldRow({
  required String label,
  required TextEditingController controller,
  required Widget icon, 
  bool isPassword = false,
  Widget? suffixIcon,
  int maxLines = 1,
  String? Function(String?)? validator,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon, // 👈 Show the image or icon here
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              obscureText: isPassword,
              maxLines: isPassword ? 1 : maxLines,
              validator: validator,
              decoration: InputDecoration(
                hintText: label, // 👈 use label as hint
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontFamily: 'DMSans',
                ),
                suffixIcon: suffixIcon,
                filled: true,
                fillColor: const Color(0xffF6F5F3),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 24,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}*/
