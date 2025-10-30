import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  final String? inputLabel;
  final String inputPlaceholder;
  final double? borderRadius;
  final TextInputType? textInputType;
  final bool? obscureText;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const InputField({
    super.key,
    this.inputLabel,
    required this.inputPlaceholder,
    this.borderRadius,
    this.textInputType,
    this.obscureText,
    this.backgroundColor,
    this.prefixIcon,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputLabel ?? "",
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
            controller: controller,
            keyboardType: textInputType ?? TextInputType.text,
            decoration: InputDecoration(
              hint: Text(
                inputPlaceholder,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  color: Color(0xFF475569),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              prefixIcon: Padding(
                padding:  EdgeInsets.only(left: prefixIcon != null? 30 : 10),
                child: prefixIcon,
              )  ,
              prefixIconConstraints: BoxConstraints(
                minWidth: prefixIcon != null? 40 : 10, // reduce default padding
              ),
              filled: true,
              fillColor: backgroundColor ?? Color(0xFFF3F6F8),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10, //
                // vertical: 14,   //
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                borderSide: BorderSide.none,
              ),
            ),
            validator: validator
          ),
        ),
      ],
    );
  }
}
