
// Creates a [TodoList] and initialise it with pre-defined values.
import 'package:riverpod/riverpod.dart';
import 'package:todo_basic/models/todo.dart';

///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
final todoListProvider = NotifierProvider<TodoList, List<Todo>>(TodoList.new);