import 'package:flutter/material.dart';
import 'package:lesson_four/profile_page.dart';

final class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void incrementCounter() => setState(() => counter++);
    void decrementCounter() => setState(() => counter--);
    void resetCounter() => setState(() => counter = 0);

    void processData() {
      // processData
      final name = nameController.text.toString();
      final email = emailController.text.toString();
      final age = int.tryParse(ageController.text) ?? 0;

      nameController.clear();
      emailController.clear();
      ageController.clear();

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProfilePage(
          name: name,
          email: email,
          age: age,
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Number of times: $counter',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 100),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(labelText: 'Age'),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: processData,
                child: const Icon(Icons.save),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: incrementCounter,
              heroTag: 'add',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: decrementCounter,
              heroTag: 'remove',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: resetCounter,
              heroTag: 'reset',
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
