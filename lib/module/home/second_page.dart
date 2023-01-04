import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/module/home/home_providers.dart';

class SecondPage extends ConsumerStatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(nameProvider),
              style: GoogleFonts.poppins(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Main Page'))
          ],
        ),
      ),
    );
  }
}
