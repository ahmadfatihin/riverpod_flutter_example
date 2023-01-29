import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_demo/module/users/providers/user_provider.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Rest API'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Consumer(
            builder: (context, ref, child) => ref.watch(userProvider).when(
                  skipLoadingOnRefresh: false,
                  data: (data) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(data!.avatar)),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${data.firstName} ${data.lastName}",
                              style: GoogleFonts.poppins(fontSize: 20),
                            ),
                            Text(data.email),
                          ],
                        ),
                      ],
                    );
                  },
                  error: (error, stackTrace) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Request Error: \n ${error.toString()}",
                      maxLines: 10,
                    ),
                  ),
                  loading: () => const Center(child: Text('Loading')),
                ),
          ),
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
                  ref.refresh(userProvider);
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
      ),
    );
  }
}
