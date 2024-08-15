// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsStruct extends BaseStruct {
  BookingsStruct({
    int? id,
    String? uuid,
    String? dateCreated,
    BookingState? state,
    EventsStruct? event,
  })  : _id = id,
        _uuid = uuid,
        _dateCreated = dateCreated,
        _state = state,
        _event = event;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "dateCreated" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "state" field.
  BookingState? _state;
  BookingState? get state => _state;
  set state(BookingState? val) => _state = val;

  bool hasState() => _state != null;

  // "event" field.
  EventsStruct? _event;
  EventsStruct get event => _event ?? EventsStruct();
  set event(EventsStruct? val) => _event = val;

  void updateEvent(Function(EventsStruct) updateFn) {
    updateFn(_event ??= EventsStruct());
  }

  bool hasEvent() => _event != null;

  static BookingsStruct fromMap(Map<String, dynamic> data) => BookingsStruct(
        id: castToType<int>(data['id']),
        uuid: data['uuid'] as String?,
        dateCreated: data['dateCreated'] as String?,
        state: deserializeEnum<BookingState>(data['state']),
        event: EventsStruct.maybeFromMap(data['event']),
      );

  static BookingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? BookingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uuid': _uuid,
        'dateCreated': _dateCreated,
        'state': _state?.serialize(),
        'event': _event?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.Enum,
        ),
        'event': serializeParam(
          _event,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BookingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.String,
          false,
        ),
        state: deserializeParam<BookingState>(
          data['state'],
          ParamType.Enum,
          false,
        ),
        event: deserializeStructParam(
          data['event'],
          ParamType.DataStruct,
          false,
          structBuilder: EventsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BookingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingsStruct &&
        id == other.id &&
        uuid == other.uuid &&
        dateCreated == other.dateCreated &&
        state == other.state &&
        event == other.event;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, uuid, dateCreated, state, event]);
}

BookingsStruct createBookingsStruct({
  int? id,
  String? uuid,
  String? dateCreated,
  BookingState? state,
  EventsStruct? event,
}) =>
    BookingsStruct(
      id: id,
      uuid: uuid,
      dateCreated: dateCreated,
      state: state,
      event: event ?? EventsStruct(),
    );
