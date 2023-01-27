import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/themes/theme_constant.dart';
import 'package:riverpod_demo/module/themes/theme_provider.dart';
import 'package:riverpod_demo/module/users/providers/user_provider.dart';

import 'module/home/main_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkTheme ? darkThemeData(context) : lightThemeData(context),
      home: const MainPage(),
    );
  }
}
