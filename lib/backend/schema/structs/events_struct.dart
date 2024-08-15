// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsStruct extends BaseStruct {
  EventsStruct({
    int? id,
    String? name,
    String? description,
    String? category,
    FileDStruct? portada,
    double? precio,
    TypeEvent? type,
    String? fecha,
    String? horaInicioEvento,
  })  : _id = id,
        _name = name,
        _description = description,
        _category = category,
        _portada = portada,
        _precio = precio,
        _type = type,
        _fecha = fecha,
        _horaInicioEvento = horaInicioEvento;

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

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "portada" field.
  FileDStruct? _portada;
  FileDStruct get portada => _portada ?? FileDStruct();
  set portada(FileDStruct? val) => _portada = val;

  void updatePortada(Function(FileDStruct) updateFn) {
    updateFn(_portada ??= FileDStruct());
  }

  bool hasPortada() => _portada != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;

  void incrementPrecio(double amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  // "type" field.
  TypeEvent? _type;
  TypeEvent get type => _type ?? TypeEvent.pay;
  set type(TypeEvent? val) => _type = val;

  bool hasType() => _type != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "horaInicioEvento" field.
  String? _horaInicioEvento;
  String get horaInicioEvento => _horaInicioEvento ?? '';
  set horaInicioEvento(String? val) => _horaInicioEvento = val;

  bool hasHoraInicioEvento() => _horaInicioEvento != null;

  static EventsStruct fromMap(Map<String, dynamic> data) => EventsStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        category: data['category'] as String?,
        portada: FileDStruct.maybeFromMap(data['portada']),
        precio: castToType<double>(data['precio']),
        type: deserializeEnum<TypeEvent>(data['type']),
        fecha: data['fecha'] as String?,
        horaInicioEvento: data['horaInicioEvento'] as String?,
      );

  static EventsStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'category': _category,
        'portada': _portada?.toMap(),
        'precio': _precio,
        'type': _type?.serialize(),
        'fecha': _fecha,
        'horaInicioEvento': _horaInicioEvento,
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
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'portada': serializeParam(
          _portada,
          ParamType.DataStruct,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'horaInicioEvento': serializeParam(
          _horaInicioEvento,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventsStruct(
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
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        portada: deserializeStructParam(
          data['portada'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.double,
          false,
        ),
        type: deserializeParam<TypeEvent>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        horaInicioEvento: deserializeParam(
          data['horaInicioEvento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventsStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        portada == other.portada &&
        precio == other.precio &&
        type == other.type &&
        fecha == other.fecha &&
        horaInicioEvento == other.horaInicioEvento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        category,
        portada,
        precio,
        type,
        fecha,
        horaInicioEvento
      ]);
}

EventsStruct createEventsStruct({
  int? id,
  String? name,
  String? description,
  String? category,
  FileDStruct? portada,
  double? precio,
  TypeEvent? type,
  String? fecha,
  String? horaInicioEvento,
}) =>
    EventsStruct(
      id: id,
      name: name,
      description: description,
      category: category,
      portada: portada ?? FileDStruct(),
      precio: precio,
      type: type,
      fecha: fecha,
      horaInicioEvento: horaInicioEvento,
    );
