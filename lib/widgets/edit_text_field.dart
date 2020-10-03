import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTextFiled extends StatelessWidget {
  const EditTextFiled({
    Key key,
    this.controller,
    this.textInputAction,
    this.suffixText,
    this.labelText,
    this.onChanged,
    this.borderColor = Colors.grey,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String suffixText;
  final String labelText;
  final Function(String) onChanged;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          if (suffixText != null)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                suffixText,
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            ),
          TextField(
            textInputAction: textInputAction ?? TextInputAction.next,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: borderColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: borderColor)),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: borderColor.withOpacity(0.8)),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: borderColor.withOpacity(0.8)),
              ),
              labelText: labelText,
              labelStyle: const TextStyle(color: Colors.black),
              hintText: labelText,
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
            ),
            style: const TextStyle(color: Colors.black, fontSize: 14),
            cursorColor: Colors.grey,
            controller: controller,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
