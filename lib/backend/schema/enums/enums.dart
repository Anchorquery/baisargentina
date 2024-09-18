import 'package:collection/collection.dart';

enum TypeEvent {
  free,
  pay,
}

enum RestriccionEvent {
  todo_publico,
  mayores_edad,
}

enum BookingState {
  pending,
  approved,
  canceled,
  rejected,
}

enum TypeUsing {
  menores_18,
  mayores_18,
  todos,
}

enum DurationPlans {
  one_month,
  three_months,
  six_months,
  twelve_months,
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
    case (BookingState):
      return BookingState.values.deserialize(value) as T?;
    case (TypeUsing):
      return TypeUsing.values.deserialize(value) as T?;
    case (DurationPlans):
      return DurationPlans.values.deserialize(value) as T?;
    default:
      return null;
  }
}
