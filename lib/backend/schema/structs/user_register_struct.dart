// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRegisterStruct extends BaseStruct {
  UserRegisterStruct({
    String? username,
  }) : _username = username;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  static UserRegisterStruct fromMap(Map<String, dynamic> data) =>
      UserRegisterStruct(
        username: data['username'] as String?,
      );

  static UserRegisterStruct? maybeFromMap(dynamic data) => data is Map
      ? UserRegisterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserRegisterStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserRegisterStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserRegisterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserRegisterStruct && username == other.username;
  }

  @override
  int get hashCode => const ListEquality().hash([username]);
}

UserRegisterStruct createUserRegisterStruct({
  String? username,
}) =>
    UserRegisterStruct(
      username: username,
    );
