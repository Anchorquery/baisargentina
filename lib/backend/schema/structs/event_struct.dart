// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends BaseStruct {
  EventStruct({
    int? id,
    String? name,
    TypeEvent? type,
    String? nombreComercio,
    String? organizador,
    String? placeUrl,
    String? placeDescription,
    double? precio,
    int? limitePersonas,
    FileDStruct? portada,
    List<FileDStruct>? images,
    CategoryStruct? category,
    String? fecha,
    String? fechaInicioVenta,
    String? fechaFinVenta,
    String? horaInicioEvento,
    RestriccionEvent? restriccion,
    String? horaFinEvento,
    String? description,
    bool? reservado,
  })  : _id = id,
        _name = name,
        _type = type,
        _nombreComercio = nombreComercio,
        _organizador = organizador,
        _placeUrl = placeUrl,
        _placeDescription = placeDescription,
        _precio = precio,
        _limitePersonas = limitePersonas,
        _portada = portada,
        _images = images,
        _category = category,
        _fecha = fecha,
        _fechaInicioVenta = fechaInicioVenta,
        _fechaFinVenta = fechaFinVenta,
        _horaInicioEvento = horaInicioEvento,
        _restriccion = restriccion,
        _horaFinEvento = horaFinEvento,
        _description = description,
        _reservado = reservado;

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

  // "type" field.
  TypeEvent? _type;
  TypeEvent get type => _type ?? TypeEvent.pay;
  set type(TypeEvent? val) => _type = val;

  bool hasType() => _type != null;

  // "nombreComercio" field.
  String? _nombreComercio;
  String get nombreComercio => _nombreComercio ?? '';
  set nombreComercio(String? val) => _nombreComercio = val;

  bool hasNombreComercio() => _nombreComercio != null;

  // "organizador" field.
  String? _organizador;
  String get organizador => _organizador ?? '';
  set organizador(String? val) => _organizador = val;

  bool hasOrganizador() => _organizador != null;

  // "placeUrl" field.
  String? _placeUrl;
  String get placeUrl => _placeUrl ?? '';
  set placeUrl(String? val) => _placeUrl = val;

  bool hasPlaceUrl() => _placeUrl != null;

  // "placeDescription" field.
  String? _placeDescription;
  String get placeDescription => _placeDescription ?? '';
  set placeDescription(String? val) => _placeDescription = val;

  bool hasPlaceDescription() => _placeDescription != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;

  void incrementPrecio(double amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  // "limitePersonas" field.
  int? _limitePersonas;
  int get limitePersonas => _limitePersonas ?? 0;
  set limitePersonas(int? val) => _limitePersonas = val;

  void incrementLimitePersonas(int amount) =>
      limitePersonas = limitePersonas + amount;

  bool hasLimitePersonas() => _limitePersonas != null;

  // "portada" field.
  FileDStruct? _portada;
  FileDStruct get portada => _portada ?? FileDStruct();
  set portada(FileDStruct? val) => _portada = val;

  void updatePortada(Function(FileDStruct) updateFn) {
    updateFn(_portada ??= FileDStruct());
  }

  bool hasPortada() => _portada != null;

  // "images" field.
  List<FileDStruct>? _images;
  List<FileDStruct> get images => _images ?? const [];
  set images(List<FileDStruct>? val) => _images = val;

  void updateImages(Function(List<FileDStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "category" field.
  CategoryStruct? _category;
  CategoryStruct get category => _category ?? CategoryStruct();
  set category(CategoryStruct? val) => _category = val;

  void updateCategory(Function(CategoryStruct) updateFn) {
    updateFn(_category ??= CategoryStruct());
  }

  bool hasCategory() => _category != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "fechaInicioVenta" field.
  String? _fechaInicioVenta;
  String get fechaInicioVenta => _fechaInicioVenta ?? '';
  set fechaInicioVenta(String? val) => _fechaInicioVenta = val;

  bool hasFechaInicioVenta() => _fechaInicioVenta != null;

  // "fechaFinVenta" field.
  String? _fechaFinVenta;
  String get fechaFinVenta => _fechaFinVenta ?? '';
  set fechaFinVenta(String? val) => _fechaFinVenta = val;

  bool hasFechaFinVenta() => _fechaFinVenta != null;

  // "horaInicioEvento" field.
  String? _horaInicioEvento;
  String get horaInicioEvento => _horaInicioEvento ?? '';
  set horaInicioEvento(String? val) => _horaInicioEvento = val;

  bool hasHoraInicioEvento() => _horaInicioEvento != null;

  // "restriccion" field.
  RestriccionEvent? _restriccion;
  RestriccionEvent? get restriccion => _restriccion;
  set restriccion(RestriccionEvent? val) => _restriccion = val;

  bool hasRestriccion() => _restriccion != null;

  // "horaFinEvento" field.
  String? _horaFinEvento;
  String get horaFinEvento => _horaFinEvento ?? '';
  set horaFinEvento(String? val) => _horaFinEvento = val;

  bool hasHoraFinEvento() => _horaFinEvento != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "reservado" field.
  bool? _reservado;
  bool get reservado => _reservado ?? false;
  set reservado(bool? val) => _reservado = val;

  bool hasReservado() => _reservado != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        type: deserializeEnum<TypeEvent>(data['type']),
        nombreComercio: data['nombreComercio'] as String?,
        organizador: data['organizador'] as String?,
        placeUrl: data['placeUrl'] as String?,
        placeDescription: data['placeDescription'] as String?,
        precio: castToType<double>(data['precio']),
        limitePersonas: castToType<int>(data['limitePersonas']),
        portada: FileDStruct.maybeFromMap(data['portada']),
        images: getStructList(
          data['images'],
          FileDStruct.fromMap,
        ),
        category: CategoryStruct.maybeFromMap(data['category']),
        fecha: data['fecha'] as String?,
        fechaInicioVenta: data['fechaInicioVenta'] as String?,
        fechaFinVenta: data['fechaFinVenta'] as String?,
        horaInicioEvento: data['horaInicioEvento'] as String?,
        restriccion: deserializeEnum<RestriccionEvent>(data['restriccion']),
        horaFinEvento: data['horaFinEvento'] as String?,
        description: data['description'] as String?,
        reservado: data['reservado'] as bool?,
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'type': _type?.serialize(),
        'nombreComercio': _nombreComercio,
        'organizador': _organizador,
        'placeUrl': _placeUrl,
        'placeDescription': _placeDescription,
        'precio': _precio,
        'limitePersonas': _limitePersonas,
        'portada': _portada?.toMap(),
        'images': _images?.map((e) => e.toMap()).toList(),
        'category': _category?.toMap(),
        'fecha': _fecha,
        'fechaInicioVenta': _fechaInicioVenta,
        'fechaFinVenta': _fechaFinVenta,
        'horaInicioEvento': _horaInicioEvento,
        'restriccion': _restriccion?.serialize(),
        'horaFinEvento': _horaFinEvento,
        'description': _description,
        'reservado': _reservado,
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
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'nombreComercio': serializeParam(
          _nombreComercio,
          ParamType.String,
        ),
        'organizador': serializeParam(
          _organizador,
          ParamType.String,
        ),
        'placeUrl': serializeParam(
          _placeUrl,
          ParamType.String,
        ),
        'placeDescription': serializeParam(
          _placeDescription,
          ParamType.String,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
        ),
        'limitePersonas': serializeParam(
          _limitePersonas,
          ParamType.int,
        ),
        'portada': serializeParam(
          _portada,
          ParamType.DataStruct,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'fechaInicioVenta': serializeParam(
          _fechaInicioVenta,
          ParamType.String,
        ),
        'fechaFinVenta': serializeParam(
          _fechaFinVenta,
          ParamType.String,
        ),
        'horaInicioEvento': serializeParam(
          _horaInicioEvento,
          ParamType.String,
        ),
        'restriccion': serializeParam(
          _restriccion,
          ParamType.Enum,
        ),
        'horaFinEvento': serializeParam(
          _horaFinEvento,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'reservado': serializeParam(
          _reservado,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
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
        type: deserializeParam<TypeEvent>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        nombreComercio: deserializeParam(
          data['nombreComercio'],
          ParamType.String,
          false,
        ),
        organizador: deserializeParam(
          data['organizador'],
          ParamType.String,
          false,
        ),
        placeUrl: deserializeParam(
          data['placeUrl'],
          ParamType.String,
          false,
        ),
        placeDescription: deserializeParam(
          data['placeDescription'],
          ParamType.String,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.double,
          false,
        ),
        limitePersonas: deserializeParam(
          data['limitePersonas'],
          ParamType.int,
          false,
        ),
        portada: deserializeStructParam(
          data['portada'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        images: deserializeStructParam<FileDStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        fechaInicioVenta: deserializeParam(
          data['fechaInicioVenta'],
          ParamType.String,
          false,
        ),
        fechaFinVenta: deserializeParam(
          data['fechaFinVenta'],
          ParamType.String,
          false,
        ),
        horaInicioEvento: deserializeParam(
          data['horaInicioEvento'],
          ParamType.String,
          false,
        ),
        restriccion: deserializeParam<RestriccionEvent>(
          data['restriccion'],
          ParamType.Enum,
          false,
        ),
        horaFinEvento: deserializeParam(
          data['horaFinEvento'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        reservado: deserializeParam(
          data['reservado'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventStruct &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        nombreComercio == other.nombreComercio &&
        organizador == other.organizador &&
        placeUrl == other.placeUrl &&
        placeDescription == other.placeDescription &&
        precio == other.precio &&
        limitePersonas == other.limitePersonas &&
        portada == other.portada &&
        listEquality.equals(images, other.images) &&
        category == other.category &&
        fecha == other.fecha &&
        fechaInicioVenta == other.fechaInicioVenta &&
        fechaFinVenta == other.fechaFinVenta &&
        horaInicioEvento == other.horaInicioEvento &&
        restriccion == other.restriccion &&
        horaFinEvento == other.horaFinEvento &&
        description == other.description &&
        reservado == other.reservado;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        type,
        nombreComercio,
        organizador,
        placeUrl,
        placeDescription,
        precio,
        limitePersonas,
        portada,
        images,
        category,
        fecha,
        fechaInicioVenta,
        fechaFinVenta,
        horaInicioEvento,
        restriccion,
        horaFinEvento,
        description,
        reservado
      ]);
}

EventStruct createEventStruct({
  int? id,
  String? name,
  TypeEvent? type,
  String? nombreComercio,
  String? organizador,
  String? placeUrl,
  String? placeDescription,
  double? precio,
  int? limitePersonas,
  FileDStruct? portada,
  CategoryStruct? category,
  String? fecha,
  String? fechaInicioVenta,
  String? fechaFinVenta,
  String? horaInicioEvento,
  RestriccionEvent? restriccion,
  String? horaFinEvento,
  String? description,
  bool? reservado,
}) =>
    EventStruct(
      id: id,
      name: name,
      type: type,
      nombreComercio: nombreComercio,
      organizador: organizador,
      placeUrl: placeUrl,
      placeDescription: placeDescription,
      precio: precio,
      limitePersonas: limitePersonas,
      portada: portada ?? FileDStruct(),
      category: category ?? CategoryStruct(),
      fecha: fecha,
      fechaInicioVenta: fechaInicioVenta,
      fechaFinVenta: fechaFinVenta,
      horaInicioEvento: horaInicioEvento,
      restriccion: restriccion,
      horaFinEvento: horaFinEvento,
      description: description,
      reservado: reservado,
    );
