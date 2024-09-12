// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesListStruct extends BaseStruct {
  ServicesListStruct({
    int? id,
    String? name,
    String? caption,
    FileDStruct? image,
  })  : _id = id,
        _name = name,
        _caption = caption,
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

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;

  bool hasCaption() => _caption != null;

  // "image" field.
  FileDStruct? _image;
  FileDStruct get image => _image ?? FileDStruct();
  set image(FileDStruct? val) => _image = val;

  void updateImage(Function(FileDStruct) updateFn) {
    updateFn(_image ??= FileDStruct());
  }

  bool hasImage() => _image != null;

  static ServicesListStruct fromMap(Map<String, dynamic> data) =>
      ServicesListStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        caption: data['caption'] as String?,
        image: FileDStruct.maybeFromMap(data['image']),
      );

  static ServicesListStruct? maybeFromMap(dynamic data) => data is Map
      ? ServicesListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'caption': _caption,
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
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ServicesListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServicesListStruct(
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
        caption: deserializeParam(
          data['caption'],
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
  String toString() => 'ServicesListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServicesListStruct &&
        id == other.id &&
        name == other.name &&
        caption == other.caption &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, caption, image]);
}

ServicesListStruct createServicesListStruct({
  int? id,
  String? name,
  String? caption,
  FileDStruct? image,
}) =>
    ServicesListStruct(
      id: id,
      name: name,
      caption: caption,
      image: image ?? FileDStruct(),
    );
