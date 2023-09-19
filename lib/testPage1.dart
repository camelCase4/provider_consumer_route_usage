import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/pageTwo');
          },
          child: const Icon(Icons.next_plan),
        ),
      ),
    );
  }
}