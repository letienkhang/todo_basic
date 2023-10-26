
// Creates a [TodoList] and initialise it with pre-defined values.
import 'package:riverpod/riverpod.dart';
import 'package:todo_basic/enums/filter_task_enum.dart';
import 'package:todo_basic/models/todo.dart';
import 'package:todo_basic/providers/filter_provider.dart';

///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
final todoListProvider = NotifierProvider<TodoList, List<Todo>>(TodoList.new);

/// The list of todos after applying of [todoListFilter].
///
/// This too uses [Provider], to avoid recomputing the filtered list unless either
/// the filter of or the todo-list updates.
final filteredTodos = Provider<List<Todo>>((ref) {
  final filter = ref.watch(todoListFilter);
  final todos = ref.watch(todoListProvider);

  switch (filter) {
    case TodoListFilter.completed:
      return todos.where((todo) => todo.completed).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.completed).toList();
    case TodoListFilter.all:
      return todos;
  }
});


final uncompletedTodosCount = Provider<int>((ref) {
  return ref.watch(todoListProvider).where((todo) => !todo.completed).length;
});

final currentTodo = Provider<Todo>((ref) => throw UnimplementedError());