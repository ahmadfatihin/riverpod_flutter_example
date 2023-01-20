import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/module/counter/counter_page.dart';
import 'package:riverpod_demo/module/form/form_name_page.dart';
import 'package:riverpod_demo/module/home/home_providers.dart';
import 'package:riverpod_demo/module/home/second_page.dart';
import 'package:riverpod_demo/module/weather/screens/future_provider_screen.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ref.watch(greetingProvider),
                style: GoogleFonts.poppins(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CounterPage(),
                        ));
                  },
                  child: const Text('Go to Counter Page (State Provider)')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormNamePage(),
                        ));
                  },
                  child:
                      const Text('Go to Form Page (State Notifier Provider)')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FutureProviderScreen(),
                        ));
                  },
                  child: const Text('Go to Weather Page (Future Provider)')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FutureProviderScreen(),
                        ));
                  },
                  child: const Text('Go to User Page (Rest API Request)')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ));
                  },
                  child: const Text('Go to Second Page'))
            ],
          ),
        ),
      ),
    );
  }
}
