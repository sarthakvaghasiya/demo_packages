import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final String? label;
  final bool? obscureText;
  final int? lines;
  final Widget? titleWidget;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final TextInputType? inputType;
  final TextInputAction? action;
  final Widget? suffix;
  final bool? password;
  final double? vPadding;
  final EdgeInsetsGeometry? hPadding;
  final bool isExpanded;
  final Color? fillColor;
  final Color? borderSideColor;
  final double? sizedBoxWidth;
  final double? width;
  final bool? isDropDownShowing;
  final String? placeHolderText;
  final String? errorText;
  final Widget? prefix;
  final int? maxLength;
  final String? prefixText;
  final bool? editabled;
  final bool readOnly;
  final dynamic icon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final bool? isCard;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final double? height;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmitted;

  const CustomTextField({
    super.key,
    this.hint,
    this.label,
    this.vPadding,
    this.lines,
    this.titleWidget,
    this.action,
    this.inputType,
    this.validator,
    this.password,
    this.suffix,
    this.sizedBoxWidth,
    this.fillColor,
    this.isExpanded = true,
    this.hPadding,
    this.borderSideColor,
    this.controller,
    this.width,
    this.isDropDownShowing = false,
    this.placeHolderText,
    this.errorText,
    this.prefix,
    this.maxLength,
    this.prefixText,
    this.editabled,
    this.readOnly = false,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.onTap,
    this.isCard = false,
    this.inputFormatters,
    this.minLines,
    this.height,
    this.onChange,
    this.onSubmitted,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width,
      height: height,
      child: TextFormField(
        clipBehavior: Clip.antiAlias,
        autocorrect: false,
        keyboardType: keyboardType ?? TextInputType.emailAddress,
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChange,
        onFieldSubmitted: onSubmitted,
        cursorColor: Colors.grey,
        maxLines: 1,
        minLines: minLines,
        obscureText: obscureText!,
        focusNode: focusNode,
        validator: validator ?? validator,
        maxLength: maxLength,
        enabled: editabled ?? true,
        textInputAction: action ?? TextInputAction.done,
        decoration: InputDecoration(
          prefix: prefix,
          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(
            minWidth: 2,
            minHeight: 2,
          ),
          hintText: placeHolderText ?? '',
          errorText: errorText,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
