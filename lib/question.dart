import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  Question({super.key, required this.question});
  String question;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 4),
      child: InkWell(
        onTap: () => null,
        onHover: (value) {
          setState(() {
            hover = value;
          });
        },
        child: Card(
          elevation: hover ? 20 : 5,
          // shadowColor: Colors.blue,

          surfaceTintColor: hover ? Colors.blue : Colors.black,
          shadowColor: hover ? Colors.blue : Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.question,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
