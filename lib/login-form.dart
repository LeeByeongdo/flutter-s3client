import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final accessKeyController = TextEditingController();
  final secretKeyController = TextEditingController();

  @override
  void dispose() {
    accessKeyController.dispose();
    secretKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account')
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: accessKeyController,),
            TextField(controller: secretKeyController,),
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${accessKeyController.text}\n${secretKeyController.text}")),
              );
            }, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}