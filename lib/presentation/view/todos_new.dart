import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodosNew extends ConsumerWidget {
  const TodosNew({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Todo',
        ),
      ),
      body: const Center(
        child: Text('Add Todo'),
      ),
    );
  }
}