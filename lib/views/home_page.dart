import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:studyrvpd/models/auth_state.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Bem-vindo, ${user?.username ?? ''}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Usuário autenticado: ${user?.username ?? ''}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: "Novo Nome de Usuário",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(authProvider.notifier)
                    .changeUsername(usernameController.text);
              },
              child: const Text("Mudar Nome de Usuário"),
            ),
          ],
        ),
      ),
    );
  }
}
