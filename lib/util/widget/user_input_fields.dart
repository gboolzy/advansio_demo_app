import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String inputLabel;
  final String inputPlaceholder;
  final TextInputType? textInputType;
  final bool? obscureText;
  const InputField({
    super.key,
    required this.inputLabel,
    required this.inputPlaceholder,
    this.textInputType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputLabel,
          style: const TextStyle(
            fontFamily: 'Satoshi',
            color: Color(0xFF071A27),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 49,
          child: TextFormField(
            obscureText: obscureText ?? false,
            keyboardType: textInputType ?? TextInputType.text ,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF3F6F8),
              labelText: inputPlaceholder,
              labelStyle: const TextStyle(
                fontFamily: 'Satoshi',
                color: Color(0xFF475569),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!value.contains('@')) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
