import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:studyrvpd/models/auth_state.dart';
import 'package:studyrvpd/views/home_page.dart';
import 'package:studyrvpd/views/login_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user == null ? const LoginPage() : const HomePage(),
    );
  }
}
