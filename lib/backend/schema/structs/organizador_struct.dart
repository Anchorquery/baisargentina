// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizadorStruct extends BaseStruct {
  OrganizadorStruct({
    int? id,
    String? name,
  })  : _id = id,
        _name = name;

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

  static OrganizadorStruct fromMap(Map<String, dynamic> data) =>
      OrganizadorStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
      );

  static OrganizadorStruct? maybeFromMap(dynamic data) => data is Map
      ? OrganizadorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
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
      }.withoutNulls;

  static OrganizadorStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrganizadorStruct(
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
      );

  @override
  String toString() => 'OrganizadorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrganizadorStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

OrganizadorStruct createOrganizadorStruct({
  int? id,
  String? name,
}) =>
    OrganizadorStruct(
      id: id,
      name: name,
    );
