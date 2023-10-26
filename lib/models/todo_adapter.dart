import 'package:hive/hive.dart';
import 'package:todo_basic/models/todo.dart';

class TodoAdapter extends TypeAdapter<Todo> {
  @override
  final int typeId = 0; // Định danh cho adapter

  @override
  Todo read(BinaryReader reader) {
    final id = reader.readString();
    final description = reader.readString();
    final completed = reader.readBool();
    return Todo(id: id, description: description, completed: completed);
  }

  @override
  void write(BinaryWriter writer, Todo obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.description);
    writer.writeBool(obj.completed);
  }
}