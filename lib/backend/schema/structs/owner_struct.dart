// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OwnerStruct extends BaseStruct {
  OwnerStruct({
    int? id,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
  })  : _id = id,
        _firstname = firstname,
        _lastname = lastname,
        _email = email,
        _phone = phone;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  set firstname(String? val) => _firstname = val;

  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  set lastname(String? val) => _lastname = val;

  bool hasLastname() => _lastname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static OwnerStruct fromMap(Map<String, dynamic> data) => OwnerStruct(
        id: castToType<int>(data['id']),
        firstname: data['firstname'] as String?,
        lastname: data['lastname'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
      );

  static OwnerStruct? maybeFromMap(dynamic data) =>
      data is Map ? OwnerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'firstname': _firstname,
        'lastname': _lastname,
        'email': _email,
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'lastname': serializeParam(
          _lastname,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
      }.withoutNulls;

  static OwnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      OwnerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        firstname: deserializeParam(
          data['firstname'],
          ParamType.String,
          false,
        ),
        lastname: deserializeParam(
          data['lastname'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OwnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OwnerStruct &&
        id == other.id &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, firstname, lastname, email, phone]);
}

OwnerStruct createOwnerStruct({
  int? id,
  String? firstname,
  String? lastname,
  String? email,
  String? phone,
}) =>
    OwnerStruct(
      id: id,
      firstname: firstname,
      lastname: lastname,
      email: email,
      phone: phone,
    );
