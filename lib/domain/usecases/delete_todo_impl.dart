import '../model/todo.dart';
import '../repository/todo.dart';
import 'delete_todo.dart';

class DeleteTodoUseCaseImpl extends DeleteTodoUseCase {
  DeleteTodoUseCaseImpl(this._todoRepository);
  final TodosRepository _todoRepository;

  @override
  Future<void> execute(Todo todo) async =>
      await _todoRepository.deleteTodo(todo);
}
