// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingVerificationStruct extends BaseStruct {
  BookingVerificationStruct({
    int? id,
    String? uuid,
    BookingState? state,
    String? dateCreated,
    String? verficationDate,
    String? errorDate,
    OwnerStruct? owner,
    EventsStruct? event,
    FileDStruct? qrImage,
    OwnerStruct? organizador,
    OwnerStruct? supervisor,
    String? placeUrl,
    VerificacionDataStruct? verification,
  })  : _id = id,
        _uuid = uuid,
        _state = state,
        _dateCreated = dateCreated,
        _verficationDate = verficationDate,
        _errorDate = errorDate,
        _owner = owner,
        _event = event,
        _qrImage = qrImage,
        _organizador = organizador,
        _supervisor = supervisor,
        _placeUrl = placeUrl,
        _verification = verification;

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

  // "verficationDate" field.
  String? _verficationDate;
  String get verficationDate => _verficationDate ?? '';
  set verficationDate(String? val) => _verficationDate = val;

  bool hasVerficationDate() => _verficationDate != null;

  // "errorDate" field.
  String? _errorDate;
  String get errorDate => _errorDate ?? '';
  set errorDate(String? val) => _errorDate = val;

  bool hasErrorDate() => _errorDate != null;

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

  // "supervisor" field.
  OwnerStruct? _supervisor;
  OwnerStruct get supervisor => _supervisor ?? OwnerStruct();
  set supervisor(OwnerStruct? val) => _supervisor = val;

  void updateSupervisor(Function(OwnerStruct) updateFn) {
    updateFn(_supervisor ??= OwnerStruct());
  }

  bool hasSupervisor() => _supervisor != null;

  // "placeUrl" field.
  String? _placeUrl;
  String get placeUrl => _placeUrl ?? '';
  set placeUrl(String? val) => _placeUrl = val;

  bool hasPlaceUrl() => _placeUrl != null;

  // "verification" field.
  VerificacionDataStruct? _verification;
  VerificacionDataStruct get verification =>
      _verification ?? VerificacionDataStruct();
  set verification(VerificacionDataStruct? val) => _verification = val;

  void updateVerification(Function(VerificacionDataStruct) updateFn) {
    updateFn(_verification ??= VerificacionDataStruct());
  }

  bool hasVerification() => _verification != null;

  static BookingVerificationStruct fromMap(Map<String, dynamic> data) =>
      BookingVerificationStruct(
        id: castToType<int>(data['id']),
        uuid: data['uuid'] as String?,
        state: deserializeEnum<BookingState>(data['state']),
        dateCreated: data['dateCreated'] as String?,
        verficationDate: data['verficationDate'] as String?,
        errorDate: data['errorDate'] as String?,
        owner: OwnerStruct.maybeFromMap(data['owner']),
        event: EventsStruct.maybeFromMap(data['event']),
        qrImage: FileDStruct.maybeFromMap(data['qrImage']),
        organizador: OwnerStruct.maybeFromMap(data['organizador']),
        supervisor: OwnerStruct.maybeFromMap(data['supervisor']),
        placeUrl: data['placeUrl'] as String?,
        verification: VerificacionDataStruct.maybeFromMap(data['verification']),
      );

  static BookingVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? BookingVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uuid': _uuid,
        'state': _state?.serialize(),
        'dateCreated': _dateCreated,
        'verficationDate': _verficationDate,
        'errorDate': _errorDate,
        'owner': _owner?.toMap(),
        'event': _event?.toMap(),
        'qrImage': _qrImage?.toMap(),
        'organizador': _organizador?.toMap(),
        'supervisor': _supervisor?.toMap(),
        'placeUrl': _placeUrl,
        'verification': _verification?.toMap(),
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
        'verficationDate': serializeParam(
          _verficationDate,
          ParamType.String,
        ),
        'errorDate': serializeParam(
          _errorDate,
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
        'supervisor': serializeParam(
          _supervisor,
          ParamType.DataStruct,
        ),
        'placeUrl': serializeParam(
          _placeUrl,
          ParamType.String,
        ),
        'verification': serializeParam(
          _verification,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BookingVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BookingVerificationStruct(
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
        verficationDate: deserializeParam(
          data['verficationDate'],
          ParamType.String,
          false,
        ),
        errorDate: deserializeParam(
          data['errorDate'],
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
        supervisor: deserializeStructParam(
          data['supervisor'],
          ParamType.DataStruct,
          false,
          structBuilder: OwnerStruct.fromSerializableMap,
        ),
        placeUrl: deserializeParam(
          data['placeUrl'],
          ParamType.String,
          false,
        ),
        verification: deserializeStructParam(
          data['verification'],
          ParamType.DataStruct,
          false,
          structBuilder: VerificacionDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BookingVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingVerificationStruct &&
        id == other.id &&
        uuid == other.uuid &&
        state == other.state &&
        dateCreated == other.dateCreated &&
        verficationDate == other.verficationDate &&
        errorDate == other.errorDate &&
        owner == other.owner &&
        event == other.event &&
        qrImage == other.qrImage &&
        organizador == other.organizador &&
        supervisor == other.supervisor &&
        placeUrl == other.placeUrl &&
        verification == other.verification;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        uuid,
        state,
        dateCreated,
        verficationDate,
        errorDate,
        owner,
        event,
        qrImage,
        organizador,
        supervisor,
        placeUrl,
        verification
      ]);
}

BookingVerificationStruct createBookingVerificationStruct({
  int? id,
  String? uuid,
  BookingState? state,
  String? dateCreated,
  String? verficationDate,
  String? errorDate,
  OwnerStruct? owner,
  EventsStruct? event,
  FileDStruct? qrImage,
  OwnerStruct? organizador,
  OwnerStruct? supervisor,
  String? placeUrl,
  VerificacionDataStruct? verification,
}) =>
    BookingVerificationStruct(
      id: id,
      uuid: uuid,
      state: state,
      dateCreated: dateCreated,
      verficationDate: verficationDate,
      errorDate: errorDate,
      owner: owner ?? OwnerStruct(),
      event: event ?? EventsStruct(),
      qrImage: qrImage ?? FileDStruct(),
      organizador: organizador ?? OwnerStruct(),
      supervisor: supervisor ?? OwnerStruct(),
      placeUrl: placeUrl,
      verification: verification ?? VerificacionDataStruct(),
    );
