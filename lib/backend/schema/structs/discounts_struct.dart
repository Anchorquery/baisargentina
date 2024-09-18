// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscountsStruct extends BaseStruct {
  DiscountsStruct({
    String? name,
    String? description,
    String? image,
    double? porceint,
    String? commerce,
    TypeUsing? typeUsing,
    String? uuid,
    String? start,
    String? end,
  })  : _name = name,
        _description = description,
        _image = image,
        _porceint = porceint,
        _commerce = commerce,
        _typeUsing = typeUsing,
        _uuid = uuid,
        _start = start,
        _end = end;

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
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "porceint" field.
  double? _porceint;
  double get porceint => _porceint ?? 0.0;
  set porceint(double? val) => _porceint = val;

  void incrementPorceint(double amount) => porceint = porceint + amount;

  bool hasPorceint() => _porceint != null;

  // "commerce" field.
  String? _commerce;
  String get commerce => _commerce ?? '';
  set commerce(String? val) => _commerce = val;

  bool hasCommerce() => _commerce != null;

  // "typeUsing" field.
  TypeUsing? _typeUsing;
  TypeUsing? get typeUsing => _typeUsing;
  set typeUsing(TypeUsing? val) => _typeUsing = val;

  bool hasTypeUsing() => _typeUsing != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  set start(String? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  set end(String? val) => _end = val;

  bool hasEnd() => _end != null;

  static DiscountsStruct fromMap(Map<String, dynamic> data) => DiscountsStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        porceint: castToType<double>(data['porceint']),
        commerce: data['commerce'] as String?,
        typeUsing: deserializeEnum<TypeUsing>(data['typeUsing']),
        uuid: data['uuid'] as String?,
        start: data['start'] as String?,
        end: data['end'] as String?,
      );

  static DiscountsStruct? maybeFromMap(dynamic data) => data is Map
      ? DiscountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'image': _image,
        'porceint': _porceint,
        'commerce': _commerce,
        'typeUsing': _typeUsing?.serialize(),
        'uuid': _uuid,
        'start': _start,
        'end': _end,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
          ParamType.String,
        ),
        'porceint': serializeParam(
          _porceint,
          ParamType.double,
        ),
        'commerce': serializeParam(
          _commerce,
          ParamType.String,
        ),
        'typeUsing': serializeParam(
          _typeUsing,
          ParamType.Enum,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'start': serializeParam(
          _start,
          ParamType.String,
        ),
        'end': serializeParam(
          _end,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiscountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountsStruct(
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
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        porceint: deserializeParam(
          data['porceint'],
          ParamType.double,
          false,
        ),
        commerce: deserializeParam(
          data['commerce'],
          ParamType.String,
          false,
        ),
        typeUsing: deserializeParam<TypeUsing>(
          data['typeUsing'],
          ParamType.Enum,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.String,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiscountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountsStruct &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        porceint == other.porceint &&
        commerce == other.commerce &&
        typeUsing == other.typeUsing &&
        uuid == other.uuid &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        description,
        image,
        porceint,
        commerce,
        typeUsing,
        uuid,
        start,
        end
      ]);
}

DiscountsStruct createDiscountsStruct({
  String? name,
  String? description,
  String? image,
  double? porceint,
  String? commerce,
  TypeUsing? typeUsing,
  String? uuid,
  String? start,
  String? end,
}) =>
    DiscountsStruct(
      name: name,
      description: description,
      image: image,
      porceint: porceint,
      commerce: commerce,
      typeUsing: typeUsing,
      uuid: uuid,
      start: start,
      end: end,
    );
