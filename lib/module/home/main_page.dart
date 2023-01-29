import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/module/counter/counter_page.dart';
import 'package:riverpod_demo/module/form/form_name_page.dart';
import 'package:riverpod_demo/module/home/home_providers.dart';
import 'package:riverpod_demo/module/home/second_page.dart';
import 'package:riverpod_demo/module/themes/theme_provider.dart';
import 'package:riverpod_demo/module/users/screens/user_screen.dart';
import 'package:riverpod_demo/module/weather/screens/future_provider_screen.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bool = true;
    final theme = ref.watch(themeProvider);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.linear,
            top: theme ? -1000 : 80,
            right: theme ? -1000 : 35,
            child: Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.linear,
                width: theme ? (MediaQuery.of(context).size.height * 3) : 0,
                height: theme ? (MediaQuery.of(context).size.height * 3) : 0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(MediaQuery.of(context).size.height),
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 20,
            child: InkWell(
              onTap: () {
                final currentValue = theme;
                ref.read(themeProvider.notifier).setThemeDark(!currentValue);
              },
              child: AnimatedSwitcher(
                switchInCurve: Curves.linear,
                duration: const Duration(milliseconds: 700),
                child: Icon(
                  key: Key(theme ? "dark" : "light"),
                  theme ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
                  color: theme ? Colors.blue : Colors.blueGrey,
                ),
              ),
            ),
          ),
          Center(
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
                  SizedBox(
                    height: 20,
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
                      child: const Text(
                          'Go to Form Page (State Notifier Provider)')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FutureProviderScreen(),
                            ));
                      },
                      child:
                          const Text('Go to Weather Page (Future Provider)')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserScreen(),
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
                              builder: (context) => SecondPage(),
                            ));
                      },
                      child: const Text('Go to Second Page'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
