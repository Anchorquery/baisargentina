// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? name,
    String? lastName,
    String? email,
    String? birth,
    String? university,
    String? country,
    int? role,
    bool? confirmed,
    bool? inArgentina,
  })  : _id = id,
        _name = name,
        _lastName = lastName,
        _email = email,
        _birth = birth,
        _university = university,
        _country = country,
        _role = role,
        _confirmed = confirmed,
        _inArgentina = inArgentina;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "birth" field.
  String? _birth;
  String get birth => _birth ?? '';
  set birth(String? val) => _birth = val;

  bool hasBirth() => _birth != null;

  // "university" field.
  String? _university;
  String get university => _university ?? '';
  set university(String? val) => _university = val;

  bool hasUniversity() => _university != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "role" field.
  int? _role;
  int get role => _role ?? 4;
  set role(int? val) => _role = val;

  void incrementRole(int amount) => role = role + amount;

  bool hasRole() => _role != null;

  // "confirmed" field.
  bool? _confirmed;
  bool get confirmed => _confirmed ?? false;
  set confirmed(bool? val) => _confirmed = val;

  bool hasConfirmed() => _confirmed != null;

  // "inArgentina" field.
  bool? _inArgentina;
  bool get inArgentina => _inArgentina ?? false;
  set inArgentina(bool? val) => _inArgentina = val;

  bool hasInArgentina() => _inArgentina != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        birth: data['birth'] as String?,
        university: data['university'] as String?,
        country: data['country'] as String?,
        role: castToType<int>(data['role']),
        confirmed: data['confirmed'] as bool?,
        inArgentina: data['inArgentina'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'lastName': _lastName,
        'email': _email,
        'birth': _birth,
        'university': _university,
        'country': _country,
        'role': _role,
        'confirmed': _confirmed,
        'inArgentina': _inArgentina,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'birth': serializeParam(
          _birth,
          ParamType.String,
        ),
        'university': serializeParam(
          _university,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.int,
        ),
        'confirmed': serializeParam(
          _confirmed,
          ParamType.bool,
        ),
        'inArgentina': serializeParam(
          _inArgentina,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        birth: deserializeParam(
          data['birth'],
          ParamType.String,
          false,
        ),
        university: deserializeParam(
          data['university'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.int,
          false,
        ),
        confirmed: deserializeParam(
          data['confirmed'],
          ParamType.bool,
          false,
        ),
        inArgentina: deserializeParam(
          data['inArgentina'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        name == other.name &&
        lastName == other.lastName &&
        email == other.email &&
        birth == other.birth &&
        university == other.university &&
        country == other.country &&
        role == other.role &&
        confirmed == other.confirmed &&
        inArgentina == other.inArgentina;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        lastName,
        email,
        birth,
        university,
        country,
        role,
        confirmed,
        inArgentina
      ]);
}

UserStruct createUserStruct({
  int? id,
  String? name,
  String? lastName,
  String? email,
  String? birth,
  String? university,
  String? country,
  int? role,
  bool? confirmed,
  bool? inArgentina,
}) =>
    UserStruct(
      id: id,
      name: name,
      lastName: lastName,
      email: email,
      birth: birth,
      university: university,
      country: country,
      role: role,
      confirmed: confirmed,
      inArgentina: inArgentina,
    );
