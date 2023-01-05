import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/form/providers/form_provider.dart';

class FormNamePage extends ConsumerWidget {
  FormNamePage({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var form = ref.watch(formProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Provider Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 300,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue)),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'New Name'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                form.name,
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${form.age}',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    ref.read(formProvider.notifier).changeName(controller.text);
                  },
                  child: const Text('Change Name')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    ref.read(formProvider.notifier).changeAge();
                  },
                  child: const Text('Increase Age')),
            ],
          ),
        ),
      ),
    );
  }
}
