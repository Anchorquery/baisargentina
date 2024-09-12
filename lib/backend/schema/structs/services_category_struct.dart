// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesCategoryStruct extends BaseStruct {
  ServicesCategoryStruct({
    int? id,
    String? name,
    String? description,
    FileDStruct? image,
  })  : _id = id,
        _name = name,
        _description = description,
        _image = image;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  FileDStruct? _image;
  FileDStruct get image => _image ?? FileDStruct();
  set image(FileDStruct? val) => _image = val;

  void updateImage(Function(FileDStruct) updateFn) {
    updateFn(_image ??= FileDStruct());
  }

  bool hasImage() => _image != null;

  static ServicesCategoryStruct fromMap(Map<String, dynamic> data) =>
      ServicesCategoryStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: FileDStruct.maybeFromMap(data['image']),
      );

  static ServicesCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ServicesCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'image': _image?.toMap(),
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ServicesCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServicesCategoryStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ServicesCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServicesCategoryStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, description, image]);
}

ServicesCategoryStruct createServicesCategoryStruct({
  int? id,
  String? name,
  String? description,
  FileDStruct? image,
}) =>
    ServicesCategoryStruct(
      id: id,
      name: name,
      description: description,
      image: image ?? FileDStruct(),
    );
