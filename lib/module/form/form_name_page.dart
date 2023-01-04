import 'package:flutter/material.dart';

class FormNamePage extends StatelessWidget {
  FormNamePage({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
            const Text(
              'name',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Change Name')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Age')),
          ],
        ),
      ),
    );
  }
}
