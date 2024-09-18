// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscountStruct extends BaseStruct {
  DiscountStruct({
    String? name,
    String? description,
    String? image,
    double? porceint,
  })  : _name = name,
        _description = description,
        _image = image,
        _porceint = porceint;

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

  static DiscountStruct fromMap(Map<String, dynamic> data) => DiscountStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        porceint: castToType<double>(data['porceint']),
      );

  static DiscountStruct? maybeFromMap(dynamic data) =>
      data is Map ? DiscountStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'image': _image,
        'porceint': _porceint,
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
      }.withoutNulls;

  static DiscountStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountStruct(
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
      );

  @override
  String toString() => 'DiscountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountStruct &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        porceint == other.porceint;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, description, image, porceint]);
}

DiscountStruct createDiscountStruct({
  String? name,
  String? description,
  String? image,
  double? porceint,
}) =>
    DiscountStruct(
      name: name,
      description: description,
      image: image,
      porceint: porceint,
    );
