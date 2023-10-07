import 'package:flutter/material.dart';

class KTextButton extends StatefulWidget {
  KTextButton({super.key, required this.text});
  String text;
  @override
  State<KTextButton> createState() => _KTextButtonState();
}

class _KTextButtonState extends State<KTextButton> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: TextButton(
        onPressed: () {},
        onHover: (value) {
          setState(() {
            hover = value;
          });
        },
        child: !hover
            ? Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              )
            : Text(
                textAlign: TextAlign.center,
                widget.text,
                style: const TextStyle(
                    color: Color.fromRGBO(2, 141, 147, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    decoration: TextDecoration.underline),
              ),
      ),
    );
  }
}
