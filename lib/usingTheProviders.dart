import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_consumer/counterPage.dart';
import 'package:provider_consumer/secondPage.dart';
import 'package:provider_consumer/thirdPage.dart';
import 'package:provider_consumer/usingTheProviders.dart';

class DisplayProviders extends StatefulWidget {
  const DisplayProviders({super.key});

  @override
  State<DisplayProviders> createState() => _DisplayProvidersState();
}

class _DisplayProvidersState extends State<DisplayProviders> {
  @override
  Widget build(BuildContext context) {
    final motorseat = Provider.of<MotorSeatProvider>(context);
    final sideMirror = Provider.of<MotorSideMirrorProvider>(context);
    final motorCount = Provider.of<CounterPageTest>(context);

    return Center(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The seat of your bike is ${motorseat.getBrand}",
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "The side mirror of your bike is ${sideMirror.getMirror}",
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          // Text(
          //   "The total count of your bike is ${motorCount.count}",
          //   style: const TextStyle(fontSize: 20),
          //   textAlign: TextAlign.center,
          // ),
          Consumer<CounterPageTest>(builder: (context, countings, child) {
            return Text(
              "The total count of your bike is ${countings.count}",
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            );
          }),
        ],
      )),
    );
  }
}
