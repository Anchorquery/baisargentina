// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommercePerfilStruct extends BaseStruct {
  CommercePerfilStruct({
    String? nameCommerce,
    String? description,
    String? urlUbicacion,
    bool? lunes,
    bool? martes,
    bool? miercoles,
    bool? jueves,
    bool? viernes,
    bool? sabado,
    bool? domingo,
    String? startDate,
    String? endDate,
    FileDStruct? picture,
    List<FileDStruct>? images,
  })  : _nameCommerce = nameCommerce,
        _description = description,
        _urlUbicacion = urlUbicacion,
        _lunes = lunes,
        _martes = martes,
        _miercoles = miercoles,
        _jueves = jueves,
        _viernes = viernes,
        _sabado = sabado,
        _domingo = domingo,
        _startDate = startDate,
        _endDate = endDate,
        _picture = picture,
        _images = images;

  // "nameCommerce" field.
  String? _nameCommerce;
  String get nameCommerce => _nameCommerce ?? '';
  set nameCommerce(String? val) => _nameCommerce = val;

  bool hasNameCommerce() => _nameCommerce != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "urlUbicacion" field.
  String? _urlUbicacion;
  String get urlUbicacion => _urlUbicacion ?? '';
  set urlUbicacion(String? val) => _urlUbicacion = val;

  bool hasUrlUbicacion() => _urlUbicacion != null;

  // "lunes" field.
  bool? _lunes;
  bool get lunes => _lunes ?? false;
  set lunes(bool? val) => _lunes = val;

  bool hasLunes() => _lunes != null;

  // "martes" field.
  bool? _martes;
  bool get martes => _martes ?? false;
  set martes(bool? val) => _martes = val;

  bool hasMartes() => _martes != null;

  // "miercoles" field.
  bool? _miercoles;
  bool get miercoles => _miercoles ?? false;
  set miercoles(bool? val) => _miercoles = val;

  bool hasMiercoles() => _miercoles != null;

  // "jueves" field.
  bool? _jueves;
  bool get jueves => _jueves ?? false;
  set jueves(bool? val) => _jueves = val;

  bool hasJueves() => _jueves != null;

  // "viernes" field.
  bool? _viernes;
  bool get viernes => _viernes ?? false;
  set viernes(bool? val) => _viernes = val;

  bool hasViernes() => _viernes != null;

  // "sabado" field.
  bool? _sabado;
  bool get sabado => _sabado ?? false;
  set sabado(bool? val) => _sabado = val;

  bool hasSabado() => _sabado != null;

  // "domingo" field.
  bool? _domingo;
  bool get domingo => _domingo ?? false;
  set domingo(bool? val) => _domingo = val;

  bool hasDomingo() => _domingo != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "picture" field.
  FileDStruct? _picture;
  FileDStruct get picture => _picture ?? FileDStruct();
  set picture(FileDStruct? val) => _picture = val;

  void updatePicture(Function(FileDStruct) updateFn) {
    updateFn(_picture ??= FileDStruct());
  }

  bool hasPicture() => _picture != null;

  // "images" field.
  List<FileDStruct>? _images;
  List<FileDStruct> get images => _images ?? const [];
  set images(List<FileDStruct>? val) => _images = val;

  void updateImages(Function(List<FileDStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  static CommercePerfilStruct fromMap(Map<String, dynamic> data) =>
      CommercePerfilStruct(
        nameCommerce: data['nameCommerce'] as String?,
        description: data['description'] as String?,
        urlUbicacion: data['urlUbicacion'] as String?,
        lunes: data['lunes'] as bool?,
        martes: data['martes'] as bool?,
        miercoles: data['miercoles'] as bool?,
        jueves: data['jueves'] as bool?,
        viernes: data['viernes'] as bool?,
        sabado: data['sabado'] as bool?,
        domingo: data['domingo'] as bool?,
        startDate: data['startDate'] as String?,
        endDate: data['endDate'] as String?,
        picture: FileDStruct.maybeFromMap(data['picture']),
        images: getStructList(
          data['images'],
          FileDStruct.fromMap,
        ),
      );

  static CommercePerfilStruct? maybeFromMap(dynamic data) => data is Map
      ? CommercePerfilStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nameCommerce': _nameCommerce,
        'description': _description,
        'urlUbicacion': _urlUbicacion,
        'lunes': _lunes,
        'martes': _martes,
        'miercoles': _miercoles,
        'jueves': _jueves,
        'viernes': _viernes,
        'sabado': _sabado,
        'domingo': _domingo,
        'startDate': _startDate,
        'endDate': _endDate,
        'picture': _picture?.toMap(),
        'images': _images?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nameCommerce': serializeParam(
          _nameCommerce,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'urlUbicacion': serializeParam(
          _urlUbicacion,
          ParamType.String,
        ),
        'lunes': serializeParam(
          _lunes,
          ParamType.bool,
        ),
        'martes': serializeParam(
          _martes,
          ParamType.bool,
        ),
        'miercoles': serializeParam(
          _miercoles,
          ParamType.bool,
        ),
        'jueves': serializeParam(
          _jueves,
          ParamType.bool,
        ),
        'viernes': serializeParam(
          _viernes,
          ParamType.bool,
        ),
        'sabado': serializeParam(
          _sabado,
          ParamType.bool,
        ),
        'domingo': serializeParam(
          _domingo,
          ParamType.bool,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'picture': serializeParam(
          _picture,
          ParamType.DataStruct,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CommercePerfilStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommercePerfilStruct(
        nameCommerce: deserializeParam(
          data['nameCommerce'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        urlUbicacion: deserializeParam(
          data['urlUbicacion'],
          ParamType.String,
          false,
        ),
        lunes: deserializeParam(
          data['lunes'],
          ParamType.bool,
          false,
        ),
        martes: deserializeParam(
          data['martes'],
          ParamType.bool,
          false,
        ),
        miercoles: deserializeParam(
          data['miercoles'],
          ParamType.bool,
          false,
        ),
        jueves: deserializeParam(
          data['jueves'],
          ParamType.bool,
          false,
        ),
        viernes: deserializeParam(
          data['viernes'],
          ParamType.bool,
          false,
        ),
        sabado: deserializeParam(
          data['sabado'],
          ParamType.bool,
          false,
        ),
        domingo: deserializeParam(
          data['domingo'],
          ParamType.bool,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.String,
          false,
        ),
        picture: deserializeStructParam(
          data['picture'],
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
      );

  @override
  String toString() => 'CommercePerfilStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CommercePerfilStruct &&
        nameCommerce == other.nameCommerce &&
        description == other.description &&
        urlUbicacion == other.urlUbicacion &&
        lunes == other.lunes &&
        martes == other.martes &&
        miercoles == other.miercoles &&
        jueves == other.jueves &&
        viernes == other.viernes &&
        sabado == other.sabado &&
        domingo == other.domingo &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        picture == other.picture &&
        listEquality.equals(images, other.images);
  }

  @override
  int get hashCode => const ListEquality().hash([
        nameCommerce,
        description,
        urlUbicacion,
        lunes,
        martes,
        miercoles,
        jueves,
        viernes,
        sabado,
        domingo,
        startDate,
        endDate,
        picture,
        images
      ]);
}

CommercePerfilStruct createCommercePerfilStruct({
  String? nameCommerce,
  String? description,
  String? urlUbicacion,
  bool? lunes,
  bool? martes,
  bool? miercoles,
  bool? jueves,
  bool? viernes,
  bool? sabado,
  bool? domingo,
  String? startDate,
  String? endDate,
  FileDStruct? picture,
}) =>
    CommercePerfilStruct(
      nameCommerce: nameCommerce,
      description: description,
      urlUbicacion: urlUbicacion,
      lunes: lunes,
      martes: martes,
      miercoles: miercoles,
      jueves: jueves,
      viernes: viernes,
      sabado: sabado,
      domingo: domingo,
      startDate: startDate,
      endDate: endDate,
      picture: picture ?? FileDStruct(),
    );
