// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FileDStruct extends BaseStruct {
  FileDStruct({
    int? id,
    String? name,
    String? mime,
    String? ext,
    String? small,
    String? url,
  })  : _id = id,
        _name = name,
        _mime = mime,
        _ext = ext,
        _small = small,
        _url = url;

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

  // "mime" field.
  String? _mime;
  String get mime => _mime ?? '';
  set mime(String? val) => _mime = val;

  bool hasMime() => _mime != null;

  // "ext" field.
  String? _ext;
  String get ext => _ext ?? '';
  set ext(String? val) => _ext = val;

  bool hasExt() => _ext != null;

  // "small" field.
  String? _small;
  String get small => _small ?? '';
  set small(String? val) => _small = val;

  bool hasSmall() => _small != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static FileDStruct fromMap(Map<String, dynamic> data) => FileDStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        mime: data['mime'] as String?,
        ext: data['ext'] as String?,
        small: data['small'] as String?,
        url: data['url'] as String?,
      );

  static FileDStruct? maybeFromMap(dynamic data) =>
      data is Map ? FileDStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'mime': _mime,
        'ext': _ext,
        'small': _small,
        'url': _url,
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
        'mime': serializeParam(
          _mime,
          ParamType.String,
        ),
        'ext': serializeParam(
          _ext,
          ParamType.String,
        ),
        'small': serializeParam(
          _small,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static FileDStruct fromSerializableMap(Map<String, dynamic> data) =>
      FileDStruct(
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
        mime: deserializeParam(
          data['mime'],
          ParamType.String,
          false,
        ),
        ext: deserializeParam(
          data['ext'],
          ParamType.String,
          false,
        ),
        small: deserializeParam(
          data['small'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FileDStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FileDStruct &&
        id == other.id &&
        name == other.name &&
        mime == other.mime &&
        ext == other.ext &&
        small == other.small &&
        url == other.url;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, mime, ext, small, url]);
}

FileDStruct createFileDStruct({
  int? id,
  String? name,
  String? mime,
  String? ext,
  String? small,
  String? url,
}) =>
    FileDStruct(
      id: id,
      name: name,
      mime: mime,
      ext: ext,
      small: small,
      url: url,
    );
