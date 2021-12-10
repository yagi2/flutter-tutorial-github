import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/ui/list/repository_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("GitHub Repository search")),
        body: const RepositoryListPage(),
      ),
    );
  }
}
