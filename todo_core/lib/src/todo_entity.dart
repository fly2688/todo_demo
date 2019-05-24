class TodoEntity {
  final bool complete;
  final String id;
  final String note;
  final String task;

  TodoEntity(this.complete, this.id, this.note, this.task);

  @override
  int get hashCode => complete.hashCode ^ task.hashCode ^ note.hashCode ^ id.hashCode;

  @override
  bool operator ==(other) {
    // TODO: implement ==
    return identical(this, other) ||
        other is TodoEntity &&
            runtimeType == other.runtimeType &&
            complete == other.complete &&
            task == other.task &&
            note == other.note &&
            id == other.id;
  }

  Map<String, Object> toJson() {
    return {
      "complete": complete,
      "task": task,
      "note": note,
      "id": id,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'TodoEntity{complete: $complete, task: $task, note: $note, id: $id}';
  }

  static TodoEntity fromJson(Map<String, Object> json) {
    return TodoEntity(json["complete"] as bool, json["id"] as String, json["note"] as String, json["task"] as String);
  }

}