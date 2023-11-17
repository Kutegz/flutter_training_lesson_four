import 'package:flutter/material.dart';

final class ProfilePage extends StatelessWidget {
  final String name;
  final String email;
  final int age;
  const ProfilePage({
    super.key,
    required this.name,
    required this.email,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(18),
                title: Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: Text(age.toString()),
                    ),
                    const SizedBox(width: 40),
                    Text(name),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(email),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new),
            )
          ],
        ),
      ),
    );
  }
}
