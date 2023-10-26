import 'package:riverpod/riverpod.dart';
import 'package:todo_basic/enums/filter_task_enum.dart';

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
final todoListFilter = StateProvider((_) => TodoListFilter.all);


