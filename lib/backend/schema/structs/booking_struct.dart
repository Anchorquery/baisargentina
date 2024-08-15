// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingStruct extends BaseStruct {
  BookingStruct({
    int? id,
    String? uuid,
    BookingState? state,
    String? dateCreated,
    OwnerStruct? owner,
    EventsStruct? event,
    FileDStruct? qrImage,
    OwnerStruct? organizador,
    String? placeUrl,
  })  : _id = id,
        _uuid = uuid,
        _state = state,
        _dateCreated = dateCreated,
        _owner = owner,
        _event = event,
        _qrImage = qrImage,
        _organizador = organizador,
        _placeUrl = placeUrl;

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

  // "state" field.
  BookingState? _state;
  BookingState? get state => _state;
  set state(BookingState? val) => _state = val;

  bool hasState() => _state != null;

  // "dateCreated" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "owner" field.
  OwnerStruct? _owner;
  OwnerStruct get owner => _owner ?? OwnerStruct();
  set owner(OwnerStruct? val) => _owner = val;

  void updateOwner(Function(OwnerStruct) updateFn) {
    updateFn(_owner ??= OwnerStruct());
  }

  bool hasOwner() => _owner != null;

  // "event" field.
  EventsStruct? _event;
  EventsStruct get event => _event ?? EventsStruct();
  set event(EventsStruct? val) => _event = val;

  void updateEvent(Function(EventsStruct) updateFn) {
    updateFn(_event ??= EventsStruct());
  }

  bool hasEvent() => _event != null;

  // "qrImage" field.
  FileDStruct? _qrImage;
  FileDStruct get qrImage => _qrImage ?? FileDStruct();
  set qrImage(FileDStruct? val) => _qrImage = val;

  void updateQrImage(Function(FileDStruct) updateFn) {
    updateFn(_qrImage ??= FileDStruct());
  }

  bool hasQrImage() => _qrImage != null;

  // "organizador" field.
  OwnerStruct? _organizador;
  OwnerStruct get organizador => _organizador ?? OwnerStruct();
  set organizador(OwnerStruct? val) => _organizador = val;

  void updateOrganizador(Function(OwnerStruct) updateFn) {
    updateFn(_organizador ??= OwnerStruct());
  }

  bool hasOrganizador() => _organizador != null;

  // "placeUrl" field.
  String? _placeUrl;
  String get placeUrl => _placeUrl ?? '';
  set placeUrl(String? val) => _placeUrl = val;

  bool hasPlaceUrl() => _placeUrl != null;

  static BookingStruct fromMap(Map<String, dynamic> data) => BookingStruct(
        id: castToType<int>(data['id']),
        uuid: data['uuid'] as String?,
        state: deserializeEnum<BookingState>(data['state']),
        dateCreated: data['dateCreated'] as String?,
        owner: OwnerStruct.maybeFromMap(data['owner']),
        event: EventsStruct.maybeFromMap(data['event']),
        qrImage: FileDStruct.maybeFromMap(data['qrImage']),
        organizador: OwnerStruct.maybeFromMap(data['organizador']),
        placeUrl: data['placeUrl'] as String?,
      );

  static BookingStruct? maybeFromMap(dynamic data) =>
      data is Map ? BookingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uuid': _uuid,
        'state': _state?.serialize(),
        'dateCreated': _dateCreated,
        'owner': _owner?.toMap(),
        'event': _event?.toMap(),
        'qrImage': _qrImage?.toMap(),
        'organizador': _organizador?.toMap(),
        'placeUrl': _placeUrl,
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
        'state': serializeParam(
          _state,
          ParamType.Enum,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'owner': serializeParam(
          _owner,
          ParamType.DataStruct,
        ),
        'event': serializeParam(
          _event,
          ParamType.DataStruct,
        ),
        'qrImage': serializeParam(
          _qrImage,
          ParamType.DataStruct,
        ),
        'organizador': serializeParam(
          _organizador,
          ParamType.DataStruct,
        ),
        'placeUrl': serializeParam(
          _placeUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static BookingStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingStruct(
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
        state: deserializeParam<BookingState>(
          data['state'],
          ParamType.Enum,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.String,
          false,
        ),
        owner: deserializeStructParam(
          data['owner'],
          ParamType.DataStruct,
          false,
          structBuilder: OwnerStruct.fromSerializableMap,
        ),
        event: deserializeStructParam(
          data['event'],
          ParamType.DataStruct,
          false,
          structBuilder: EventsStruct.fromSerializableMap,
        ),
        qrImage: deserializeStructParam(
          data['qrImage'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        organizador: deserializeStructParam(
          data['organizador'],
          ParamType.DataStruct,
          false,
          structBuilder: OwnerStruct.fromSerializableMap,
        ),
        placeUrl: deserializeParam(
          data['placeUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BookingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingStruct &&
        id == other.id &&
        uuid == other.uuid &&
        state == other.state &&
        dateCreated == other.dateCreated &&
        owner == other.owner &&
        event == other.event &&
        qrImage == other.qrImage &&
        organizador == other.organizador &&
        placeUrl == other.placeUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        uuid,
        state,
        dateCreated,
        owner,
        event,
        qrImage,
        organizador,
        placeUrl
      ]);
}

BookingStruct createBookingStruct({
  int? id,
  String? uuid,
  BookingState? state,
  String? dateCreated,
  OwnerStruct? owner,
  EventsStruct? event,
  FileDStruct? qrImage,
  OwnerStruct? organizador,
  String? placeUrl,
}) =>
    BookingStruct(
      id: id,
      uuid: uuid,
      state: state,
      dateCreated: dateCreated,
      owner: owner ?? OwnerStruct(),
      event: event ?? EventsStruct(),
      qrImage: qrImage ?? FileDStruct(),
      organizador: organizador ?? OwnerStruct(),
      placeUrl: placeUrl,
    );
