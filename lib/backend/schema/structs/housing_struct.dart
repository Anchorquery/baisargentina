// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HousingStruct extends BaseStruct {
  HousingStruct({
    String? title,
    int? id,
    String? description,
    double? price,
    String? type,
    String? caption,
    FileDStruct? portada,
    int? banos,
    String? urlContacto,
    List<FileDStruct>? images,
    int? habitaciones,
    double? area,
  })  : _title = title,
        _id = id,
        _description = description,
        _price = price,
        _type = type,
        _caption = caption,
        _portada = portada,
        _banos = banos,
        _urlContacto = urlContacto,
        _images = images,
        _habitaciones = habitaciones,
        _area = area;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "type" field.
  String? _type;
  String get type => _type ?? 'rent';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;

  bool hasCaption() => _caption != null;

  // "portada" field.
  FileDStruct? _portada;
  FileDStruct get portada => _portada ?? FileDStruct();
  set portada(FileDStruct? val) => _portada = val;

  void updatePortada(Function(FileDStruct) updateFn) {
    updateFn(_portada ??= FileDStruct());
  }

  bool hasPortada() => _portada != null;

  // "banos" field.
  int? _banos;
  int get banos => _banos ?? 0;
  set banos(int? val) => _banos = val;

  void incrementBanos(int amount) => banos = banos + amount;

  bool hasBanos() => _banos != null;

  // "urlContacto" field.
  String? _urlContacto;
  String get urlContacto => _urlContacto ?? '';
  set urlContacto(String? val) => _urlContacto = val;

  bool hasUrlContacto() => _urlContacto != null;

  // "images" field.
  List<FileDStruct>? _images;
  List<FileDStruct> get images => _images ?? const [];
  set images(List<FileDStruct>? val) => _images = val;

  void updateImages(Function(List<FileDStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "habitaciones" field.
  int? _habitaciones;
  int get habitaciones => _habitaciones ?? 0;
  set habitaciones(int? val) => _habitaciones = val;

  void incrementHabitaciones(int amount) =>
      habitaciones = habitaciones + amount;

  bool hasHabitaciones() => _habitaciones != null;

  // "area" field.
  double? _area;
  double get area => _area ?? 0.0;
  set area(double? val) => _area = val;

  void incrementArea(double amount) => area = area + amount;

  bool hasArea() => _area != null;

  static HousingStruct fromMap(Map<String, dynamic> data) => HousingStruct(
        title: data['title'] as String?,
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        price: castToType<double>(data['price']),
        type: data['type'] as String?,
        caption: data['caption'] as String?,
        portada: FileDStruct.maybeFromMap(data['portada']),
        banos: castToType<int>(data['banos']),
        urlContacto: data['urlContacto'] as String?,
        images: getStructList(
          data['images'],
          FileDStruct.fromMap,
        ),
        habitaciones: castToType<int>(data['habitaciones']),
        area: castToType<double>(data['area']),
      );

  static HousingStruct? maybeFromMap(dynamic data) =>
      data is Map ? HousingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'id': _id,
        'description': _description,
        'price': _price,
        'type': _type,
        'caption': _caption,
        'portada': _portada?.toMap(),
        'banos': _banos,
        'urlContacto': _urlContacto,
        'images': _images?.map((e) => e.toMap()).toList(),
        'habitaciones': _habitaciones,
        'area': _area,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'portada': serializeParam(
          _portada,
          ParamType.DataStruct,
        ),
        'banos': serializeParam(
          _banos,
          ParamType.int,
        ),
        'urlContacto': serializeParam(
          _urlContacto,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
        'habitaciones': serializeParam(
          _habitaciones,
          ParamType.int,
        ),
        'area': serializeParam(
          _area,
          ParamType.double,
        ),
      }.withoutNulls;

  static HousingStruct fromSerializableMap(Map<String, dynamic> data) =>
      HousingStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        caption: deserializeParam(
          data['caption'],
          ParamType.String,
          false,
        ),
        portada: deserializeStructParam(
          data['portada'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        banos: deserializeParam(
          data['banos'],
          ParamType.int,
          false,
        ),
        urlContacto: deserializeParam(
          data['urlContacto'],
          ParamType.String,
          false,
        ),
        images: deserializeStructParam<FileDStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        habitaciones: deserializeParam(
          data['habitaciones'],
          ParamType.int,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'HousingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HousingStruct &&
        title == other.title &&
        id == other.id &&
        description == other.description &&
        price == other.price &&
        type == other.type &&
        caption == other.caption &&
        portada == other.portada &&
        banos == other.banos &&
        urlContacto == other.urlContacto &&
        listEquality.equals(images, other.images) &&
        habitaciones == other.habitaciones &&
        area == other.area;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        id,
        description,
        price,
        type,
        caption,
        portada,
        banos,
        urlContacto,
        images,
        habitaciones,
        area
      ]);
}

HousingStruct createHousingStruct({
  String? title,
  int? id,
  String? description,
  double? price,
  String? type,
  String? caption,
  FileDStruct? portada,
  int? banos,
  String? urlContacto,
  int? habitaciones,
  double? area,
}) =>
    HousingStruct(
      title: title,
      id: id,
      description: description,
      price: price,
      type: type,
      caption: caption,
      portada: portada ?? FileDStruct(),
      banos: banos,
      urlContacto: urlContacto,
      habitaciones: habitaciones,
      area: area,
    );
