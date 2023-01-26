import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/weather/providers/weather_future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Consumer(
                    builder: (context, ref, child) => ref
                        .watch(weatherFutureProvider)
                        .when(
                            data: (data) => SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(data.path),
                                ),
                            error: ((error, stackTrace) =>
                                Text("Request Error: ${error.toString()}")),
                            loading: () => const Text('Loading')))),
            Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 7.0),
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(500.0),
                  onTap: () {
                    // ignore: unused_result
                    ref.refresh(weatherFutureProvider);
                    // ref.read(weatherFutureProvider);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.refresh,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
