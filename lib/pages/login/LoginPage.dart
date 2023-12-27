import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<int> si() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return 3;
  }

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Login Page"),
      ),
      body: FutureBuilder(
        future: si(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData && snapshot.data != null) {
            return Center(
              child: Column(
                children: [
                  Container(
                    width: device.width * .30,
                    height: device.height * .10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  const Text("Si"),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                    child: const Text("mmg"),
                  )
                ],
              ),
            );
          }

          return const Center(child: Text("Jodio"));
        },
      ),
    );
  }
}
