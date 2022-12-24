import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonCarousal extends StatefulWidget {
  const ButtonCarousal({super.key});

  @override
  State<ButtonCarousal> createState() => _ButtonCarousalState();
}

class _ButtonCarousalState extends State<ButtonCarousal> {
  @override
  Widget build(BuildContext context) {
    List<String> buttonTitle = ['Category BF', 'Category YPE', 'Category LPF'];
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttonTitle.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                child: Text(buttonTitle[index]),
              ));
        },
      ),
    );
  }
}
