// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceStruct extends BaseStruct {
  ServiceStruct({
    int? id,
    String? name,
    String? description,
    String? caption,
    List<FileDStruct>? images,
    String? contactUrl,
  })  : _id = id,
        _name = name,
        _description = description,
        _caption = caption,
        _images = images,
        _contactUrl = contactUrl;

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

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;

  bool hasCaption() => _caption != null;

  // "images" field.
  List<FileDStruct>? _images;
  List<FileDStruct> get images => _images ?? const [];
  set images(List<FileDStruct>? val) => _images = val;

  void updateImages(Function(List<FileDStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "contactUrl" field.
  String? _contactUrl;
  String get contactUrl => _contactUrl ?? '';
  set contactUrl(String? val) => _contactUrl = val;

  bool hasContactUrl() => _contactUrl != null;

  static ServiceStruct fromMap(Map<String, dynamic> data) => ServiceStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        caption: data['caption'] as String?,
        images: getStructList(
          data['images'],
          FileDStruct.fromMap,
        ),
        contactUrl: data['contactUrl'] as String?,
      );

  static ServiceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServiceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'caption': _caption,
        'images': _images?.map((e) => e.toMap()).toList(),
        'contactUrl': _contactUrl,
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
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
        'contactUrl': serializeParam(
          _contactUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceStruct(
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
        caption: deserializeParam(
          data['caption'],
          ParamType.String,
          false,
        ),
        images: deserializeStructParam<FileDStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        contactUrl: deserializeParam(
          data['contactUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ServiceStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        caption == other.caption &&
        listEquality.equals(images, other.images) &&
        contactUrl == other.contactUrl;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, description, caption, images, contactUrl]);
}

ServiceStruct createServiceStruct({
  int? id,
  String? name,
  String? description,
  String? caption,
  String? contactUrl,
}) =>
    ServiceStruct(
      id: id,
      name: name,
      description: description,
      caption: caption,
      contactUrl: contactUrl,
    );
