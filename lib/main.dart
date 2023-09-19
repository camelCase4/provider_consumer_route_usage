import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_consumer/counterIncrease.dart';
import 'package:provider_consumer/counterPage.dart';
import 'package:provider_consumer/secondPage.dart';
import 'package:provider_consumer/testPage1.dart';
import 'package:provider_consumer/testPage2.dart';
import 'package:provider_consumer/thirdPage.dart';
import 'package:provider_consumer/usingTheProviders.dart';

String sum = "";
void main() {
  runApp(const ProviderTest());
}

class ProviderTest extends StatelessWidget {
  const ProviderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MotorSeatProvider()),
        ChangeNotifierProvider(create: (context) => MotorSideMirrorProvider()),
        ChangeNotifierProvider(create: (context) => CounterPageTest()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/home': (context) => ProviderTest(),
          '/pageOne': (context) => PageOne(),
          '/pageTwo': (context) => PageTwo(),
        },
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Provider Practice"),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              children: [
                DisplayProviders(),
                const SizedBox(
                  height: 30,
                ),
                CountIncrease(),
                Builder(
                  builder: (context) {
                    return FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pageOne');
                      },
                      child: const Text("Switch!"),
                    );
                  }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
