import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../viewmodel/module.dart';

class TodosList extends ConsumerWidget {
  const TodosList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosListState);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Fuss',
        ),
      ),
      body: ListView.builder(
        itemCount: todos.values.length,
        itemBuilder: (context, index) {
          final todo = todos.values[index];
          return ListTile(
            title: Text(todo.title),
            subtitle: Text(todo.description ?? ''),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/todos/new');
        },
        icon: const Icon(Icons.add),
        label: const Text('Add Todo'),
        tooltip: 'Add Todo',
      ),
    );
  }
}
