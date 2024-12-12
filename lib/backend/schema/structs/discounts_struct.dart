// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscountsStruct extends BaseStruct {
  DiscountsStruct({
    int? id,
    String? name,
    String? description,
    double? porceint,
    String? commerce,
    TypeUsing? typeUsing,
    String? uuid,
    String? start,
    String? end,
    FileDStruct? image,
    int? comercioId,
    bool? state,
    int? category,
  })  : _id = id,
        _name = name,
        _description = description,
        _porceint = porceint,
        _commerce = commerce,
        _typeUsing = typeUsing,
        _uuid = uuid,
        _start = start,
        _end = end,
        _image = image,
        _comercioId = comercioId,
        _state = state,
        _category = category;

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

  // "image" field.
  FileDStruct? _image;
  FileDStruct get image => _image ?? FileDStruct();
  set image(FileDStruct? val) => _image = val;

  void updateImage(Function(FileDStruct) updateFn) {
    updateFn(_image ??= FileDStruct());
  }

  bool hasImage() => _image != null;

  // "comercioId" field.
  int? _comercioId;
  int get comercioId => _comercioId ?? 0;
  set comercioId(int? val) => _comercioId = val;

  void incrementComercioId(int amount) => comercioId = comercioId + amount;

  bool hasComercioId() => _comercioId != null;

  // "state" field.
  bool? _state;
  bool get state => _state ?? false;
  set state(bool? val) => _state = val;

  bool hasState() => _state != null;

  // "category" field.
  int? _category;
  int get category => _category ?? 0;
  set category(int? val) => _category = val;

  void incrementCategory(int amount) => category = category + amount;

  bool hasCategory() => _category != null;

  static DiscountsStruct fromMap(Map<String, dynamic> data) => DiscountsStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        porceint: castToType<double>(data['porceint']),
        commerce: data['commerce'] as String?,
        typeUsing: data['typeUsing'] is TypeUsing
            ? data['typeUsing']
            : deserializeEnum<TypeUsing>(data['typeUsing']),
        uuid: data['uuid'] as String?,
        start: data['start'] as String?,
        end: data['end'] as String?,
        image: data['image'] is FileDStruct
            ? data['image']
            : FileDStruct.maybeFromMap(data['image']),
        comercioId: castToType<int>(data['comercioId']),
        state: data['state'] as bool?,
        category: castToType<int>(data['category']),
      );

  static DiscountsStruct? maybeFromMap(dynamic data) => data is Map
      ? DiscountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'porceint': _porceint,
        'commerce': _commerce,
        'typeUsing': _typeUsing?.serialize(),
        'uuid': _uuid,
        'start': _start,
        'end': _end,
        'image': _image?.toMap(),
        'comercioId': _comercioId,
        'state': _state,
        'category': _category,
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
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
        'comercioId': serializeParam(
          _comercioId,
          ParamType.int,
        ),
        'state': serializeParam(
          _state,
          ParamType.bool,
        ),
        'category': serializeParam(
          _category,
          ParamType.int,
        ),
      }.withoutNulls;

  static DiscountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountsStruct(
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
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        comercioId: deserializeParam(
          data['comercioId'],
          ParamType.int,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.bool,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DiscountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountsStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        porceint == other.porceint &&
        commerce == other.commerce &&
        typeUsing == other.typeUsing &&
        uuid == other.uuid &&
        start == other.start &&
        end == other.end &&
        image == other.image &&
        comercioId == other.comercioId &&
        state == other.state &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        porceint,
        commerce,
        typeUsing,
        uuid,
        start,
        end,
        image,
        comercioId,
        state,
        category
      ]);
}

DiscountsStruct createDiscountsStruct({
  int? id,
  String? name,
  String? description,
  double? porceint,
  String? commerce,
  TypeUsing? typeUsing,
  String? uuid,
  String? start,
  String? end,
  FileDStruct? image,
  int? comercioId,
  bool? state,
  int? category,
}) =>
    DiscountsStruct(
      id: id,
      name: name,
      description: description,
      porceint: porceint,
      commerce: commerce,
      typeUsing: typeUsing,
      uuid: uuid,
      start: start,
      end: end,
      image: image ?? FileDStruct(),
      comercioId: comercioId,
      state: state,
      category: category,
    );
