// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerificacionDataStruct extends BaseStruct {
  VerificacionDataStruct({
    bool? error,
    String? message,
    BookingState? state,
  })  : _error = error,
        _message = message,
        _state = state;

  // "error" field.
  bool? _error;
  bool get error => _error ?? false;
  set error(bool? val) => _error = val;

  bool hasError() => _error != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "state" field.
  BookingState? _state;
  BookingState get state => _state ?? BookingState.pending;
  set state(BookingState? val) => _state = val;

  bool hasState() => _state != null;

  static VerificacionDataStruct fromMap(Map<String, dynamic> data) =>
      VerificacionDataStruct(
        error: data['error'] as bool?,
        message: data['message'] as String?,
        state: deserializeEnum<BookingState>(data['state']),
      );

  static VerificacionDataStruct? maybeFromMap(dynamic data) => data is Map
      ? VerificacionDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'error': _error,
        'message': _message,
        'state': _state?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'error': serializeParam(
          _error,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static VerificacionDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VerificacionDataStruct(
        error: deserializeParam(
          data['error'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        state: deserializeParam<BookingState>(
          data['state'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'VerificacionDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VerificacionDataStruct &&
        error == other.error &&
        message == other.message &&
        state == other.state;
  }

  @override
  int get hashCode => const ListEquality().hash([error, message, state]);
}

VerificacionDataStruct createVerificacionDataStruct({
  bool? error,
  String? message,
  BookingState? state,
}) =>
    VerificacionDataStruct(
      error: error,
      message: message,
      state: state,
    );
