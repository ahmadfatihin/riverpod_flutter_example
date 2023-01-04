import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/module/counter/counter_page.dart';
import 'package:riverpod_demo/module/home/home_providers.dart';
import 'package:riverpod_demo/module/home/second_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(greetingProvider),
              style: GoogleFonts.poppins(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterPage(),
                      ));
                },
                child: const Text('Go to Counter Page'))
          ],
        ),
      ),
    );
  }
}
