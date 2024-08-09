import 'package:collection/collection.dart';

enum TypeEvent {
  free,
  pay,
}

enum RestriccionEvent {
  todo_publico,
  mayores_edad,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TypeEvent):
      return TypeEvent.values.deserialize(value) as T?;
    case (RestriccionEvent):
      return RestriccionEvent.values.deserialize(value) as T?;
    default:
      return null;
  }
}
