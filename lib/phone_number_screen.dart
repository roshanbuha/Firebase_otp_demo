import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Auth"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: "Phone"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: codeController,
              decoration: const InputDecoration(labelText: "Code"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  verifyNumber();
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }

  void verifyNumber() {}
}
