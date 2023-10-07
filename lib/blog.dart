import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  Blog(
      {super.key,
      required this.name,
      required this.position,
      required this.body});
  String name;
  String position;
  String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width > 600 ? 120 : 60,
            height: 120,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          ),
        ),
        Text(
          name.toUpperCase(),
          style: const TextStyle(
            color: Color.fromRGBO(0, 41, 58, 1),
            fontSize: 24,
          ),
        ),
        Text(
          position,
          style: const TextStyle(
              color: Color.fromRGBO(158, 178, 179, 1),
              fontWeight: FontWeight.w200,
              fontSize: 18),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          body,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color.fromRGBO(158, 178, 179, 1),
              fontWeight: FontWeight.w200,
              fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text("Read More"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 41, 58, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
        )
      ],
    );
  }
}
