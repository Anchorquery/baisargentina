import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Events Group Code

class EventsGroup {
  static String getBaseUrl({
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetEventsCall getEventsCall = GetEventsCall();
  static GetEventCall getEventCall = GetEventCall();
  static GetOrganizerCall getOrganizerCall = GetOrganizerCall();
  static EliminarEventoCall eliminarEventoCall = EliminarEventoCall();
  static ActualizarEventoCall actualizarEventoCall = ActualizarEventoCall();
}

class GetEventsCall {
  Future<ApiCallResponse> call({
    String? categoryId = '0',
    bool? listAdmin,
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) async {
    final baseUrl = EventsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetEvents',
      apiUrl: '${baseUrl}/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'categoryId': categoryId,
        'listAdmin': listAdmin,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic? pagination(dynamic response) => getJsonField(
        response,
        r'''$.meta.pagination''',
      );
}

class GetEventCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) async {
    final baseUrl = EventsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetEvent',
      apiUrl: '${baseUrl}/events/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic? portada(dynamic response) => getJsonField(
        response,
        r'''$.data.portada''',
      );
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.data.images''',
        true,
      ) as List?;
}

class GetOrganizerCall {
  Future<ApiCallResponse> call({
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) async {
    final baseUrl = EventsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetOrganizer',
      apiUrl: '${baseUrl}/events/find-organizer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class EliminarEventoCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) async {
    final baseUrl = EventsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Eliminar evento',
      apiUrl: '${baseUrl}/events/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ActualizarEventoCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    List<FFUploadedFile>? imagesList,
    int? category,
    String? type = '',
    FFUploadedFile? portada,
    String? placeUrl = '',
    String? placeDescription = '',
    String? nombreComercio = '',
    String? fechaInicioVenta = '',
    String? fechaFinVenta = '',
    String? horaInicioEvento = '',
    String? fecha = '',
    String? restriccion = '',
    int? limitePersonas,
    int? organizador,
    bool? isBais,
    String? detenerVentas = '',
    String? nameOrganizerNoBais = '',
    double? precio,
    int? id,
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMzA4OTkxOSwiZXhwIjoxNzI1NjgxOTE5fQ.F-1c8-nRWcHRqiHQjxtTwlXT-VImWmicIysfDQsSZfM',
  }) async {
    final baseUrl = EventsGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'actualizar evento',
      apiUrl: '${baseUrl}/events/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'description': description,
        'images': images,
        'category': category,
        'type': type,
        'portada': portada,
        'placeUrl': placeUrl,
        'placeDescription': placeDescription,
        'nombreComercio': nombreComercio,
        'fechaInicioVenta': fechaInicioVenta,
        'fechaFinVenta': fechaFinVenta,
        'horaInicioEvento': horaInicioEvento,
        'fecha': fecha,
        'restriccion': restriccion,
        'limitePersonas': limitePersonas,
        'organizador': organizador,
        'precio': precio,
        'isBais': isBais,
        'detenerVentas': detenerVentas,
        'nameOrganizerNoBais': nameOrganizerNoBais,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Events Group Code

/// Start Public Group Code

class PublicGroup {
  static String getBaseUrl() => 'https://server.baisargentina.com/api';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static CategoriaComerciosCall categoriaComerciosCall =
      CategoriaComerciosCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? identifier = '',
    String? password = '',
  }) async {
    final baseUrl = PublicGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "identifier": "${identifier}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth/local',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.jwt''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  bool? confirmed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.confirmed''',
      ));
  bool? locked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.blocked''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? birth(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.birth''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.country''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  bool? inArgentina(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.inArgentina''',
      ));
  String? university(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.university''',
      ));
  String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.avatar''',
      ));
  int? role(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.role.id''',
      ));
}

class CategoriaComerciosCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PublicGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'categoria comercios',
      apiUrl: '${baseUrl}/commerce-categories/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Public Group Code

/// Start Reserve Group Code

class ReserveGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CreateReserveCall createReserveCall = CreateReserveCall();
  static FindmeCall findmeCall = FindmeCall();
  static FindmeOneCall findmeOneCall = FindmeOneCall();
  static VerificarReservaCall verificarReservaCall = VerificarReservaCall();
  static FindReservasAdminCall findReservasAdminCall = FindReservasAdminCall();
  static FindOneAdminCall findOneAdminCall = FindOneAdminCall();
  static BuscarEstudiantePorEmailCall buscarEstudiantePorEmailCall =
      BuscarEstudiantePorEmailCall();
  static BuscarEventoPorNombreEventoCall buscarEventoPorNombreEventoCall =
      BuscarEventoPorNombreEventoCall();
  static CrearReservaAdminCall crearReservaAdminCall = CrearReservaAdminCall();
  static CambiarEstadoRerservaCall cambiarEstadoRerservaCall =
      CambiarEstadoRerservaCall();
}

class CreateReserveCall {
  Future<ApiCallResponse> call({
    int? event,
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "event": ${event}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateReserve',
      apiUrl: '${baseUrl}/bookings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindmeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'findme',
      apiUrl: '${baseUrl}/bookings-me/find',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic? pagination(dynamic response) => getJsonField(
        response,
        r'''$.meta.pagination''',
      );
}

class FindmeOneCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'findme One',
      apiUrl: '${baseUrl}/bookings-me/find/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class VerificarReservaCall {
  Future<ApiCallResponse> call({
    String? data = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verificarReserva',
      apiUrl: '${baseUrl}/bookings/verificar-reserva',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic? owner(dynamic response) => getJsonField(
        response,
        r'''$.data.owner''',
      );
  dynamic? organizador(dynamic response) => getJsonField(
        response,
        r'''$.data.organizador''',
      );
  dynamic? event(dynamic response) => getJsonField(
        response,
        r'''$.data.event''',
      );
  dynamic? supervisor(dynamic response) => getJsonField(
        response,
        r'''$.data.supervisor''',
      );
  dynamic? verficacion(dynamic response) => getJsonField(
        response,
        r'''$.verificacion''',
      );
}

class FindReservasAdminCall {
  Future<ApiCallResponse> call({
    String? groupBy = 'day',
    String? startDate = '',
    String? endDate = '',
    String? ownerName = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'find reservas admin',
      apiUrl: '${baseUrl}/bookings',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'groupBy': groupBy,
        'startDate': startDate,
        'endDate': endDate,
        'ownerName': ownerName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindOneAdminCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'find one admin',
      apiUrl: '${baseUrl}/bookings/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEstudiantePorEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar estudiante por email',
      apiUrl: '${baseUrl}/bookings/buscar-estudiante-email/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEventoPorNombreEventoCall {
  Future<ApiCallResponse> call({
    String? nombre = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "nombre": "${nombre}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar evento por nombre evento',
      apiUrl: '${baseUrl}/bookings/buscar-evento-nombre/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearReservaAdminCall {
  Future<ApiCallResponse> call({
    int? estudiante,
    int? evento,
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "estudiante": ${estudiante},
  "evento": ${evento}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear reserva admin',
      apiUrl: '${baseUrl}/bookings/crear-admin-reserva-manual/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CambiarEstadoRerservaCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? estado = '',
    String? token = '',
  }) async {
    final baseUrl = ReserveGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "estado": "${estado}",
  "uuid": "${uuid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cambiarEstadoRerserva',
      apiUrl: '${baseUrl}/bookings/cambiar-estado-reserva/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Reserve Group Code

/// Start User Group Code

class UserGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static MeCall meCall = MeCall();
  static UpdateMetaDataComercioCall updateMetaDataComercioCall =
      UpdateMetaDataComercioCall();
  static MeDataCall meDataCall = MeDataCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static FindUserCall findUserCall = FindUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static ObtenerPerfilComercioCall obtenerPerfilComercioCall =
      ObtenerPerfilComercioCall();
  static UpdateMetaComercioAdminCall updateMetaComercioAdminCall =
      UpdateMetaComercioAdminCall();
}

class MeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'me ',
      apiUrl: '${baseUrl}/users/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class UpdateMetaDataComercioCall {
  Future<ApiCallResponse> call({
    String? urlUbicacion = '',
    String? endDate = '',
    String? startDate = '',
    bool? domingo,
    bool? sabado,
    bool? viernes,
    bool? jueves,
    bool? miercoles,
    bool? martes,
    bool? lunes,
    String? description = '',
    String? nameCommerce = '',
    FFUploadedFile? picture,
    List<FFUploadedFile>? imagesList,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'UpdateMetaDataComercio',
      apiUrl: '${baseUrl}/users-permissions/users/saveCommerceMetadata',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'nameCommerce': nameCommerce,
        'description': description,
        'lunes': lunes,
        'martes': martes,
        'miercoles': miercoles,
        'jueves': jueves,
        'viernes': viernes,
        'sabado': sabado,
        'domingo': domingo,
        'startDate': startDate,
        'endDate': endDate,
        'urlUbicacion': urlUbicacion,
        'picture': picture,
        'images': images,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeDataCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'MeData',
      apiUrl: '${baseUrl}/users-permissions/users/me-data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? country = '',
    String? email = '',
    String? name = '',
    String? lastName = '',
    String? birth = '',
    String? phone = '',
    bool? inArgentina,
    String? password = '',
    String? university = '',
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "country": "${country}",
  "email": "${email}",
  "name": "${name}",
  "lastName": "${lastName}",
  "birth": "${birth}",
  "phone": "${phone}",
  "inArgentina": ${inArgentina},
  "password": "${password}",
  "university": "${university}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateUser',
      apiUrl: '${baseUrl}/users-permissions/users/save-me',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindUserCall {
  Future<ApiCallResponse> call({
    int? role,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'findUser',
      apiUrl: '${baseUrl}/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'role': role,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete user',
      apiUrl: '${baseUrl}/users/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObtenerPerfilComercioCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'obtenerPerfilComercio',
      apiUrl: '${baseUrl}/users-permissions/users/perfil-commerce/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateMetaComercioAdminCall {
  Future<ApiCallResponse> call({
    int? id,
    String? urlUbicacion = '',
    String? endDate = '',
    String? startDate = '',
    bool? domingo,
    bool? sabado,
    bool? viernes,
    bool? jueves,
    bool? miercoles,
    bool? martes,
    bool? lunes,
    String? description = '',
    String? nameCommerce = '',
    FFUploadedFile? picture,
    List<FFUploadedFile>? imagesList,
    int? category,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'UpdateMetaComercioAdmin',
      apiUrl:
          '${baseUrl}/users-permissions/users/saveCommerceMetadataAdmin/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'urlUbicacion': urlUbicacion,
        'endDate': endDate,
        'startDate': startDate,
        'domingo': domingo,
        'sabado': sabado,
        'viernes': viernes,
        'jueves': jueves,
        'miercoles': miercoles,
        'martes': martes,
        'lunes': lunes,
        'description': description,
        'nameCommerce': nameCommerce,
        'picture': picture,
        'images': images,
        'category': category,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End User Group Code

/// Start Upload Media Group Code

class UploadMediaGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static MutipleCall mutipleCall = MutipleCall();
  static SingleCall singleCall = SingleCall();
}

class MutipleCall {
  Future<ApiCallResponse> call({
    String? ref = '',
    String? field = '',
    List<FFUploadedFile>? filesList,
    int? refId,
    String? token = '',
  }) async {
    final baseUrl = UploadMediaGroup.getBaseUrl(
      token: token,
    );
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Mutiple',
      apiUrl: '${baseUrl}/upload',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'ref': ref,
        'field': field,
        'refId': refId,
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SingleCall {
  Future<ApiCallResponse> call({
    String? ref = '',
    String? field = '',
    FFUploadedFile? files,
    int? refId,
    String? token = '',
  }) async {
    final baseUrl = UploadMediaGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Single',
      apiUrl: '${baseUrl}/upload',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'ref': ref,
        'field': field,
        'refId': refId,
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Upload Media Group Code

/// Start Services Group Code

class ServicesGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static FindCall findCall = FindCall();
  static FindCategoryCall findCategoryCall = FindCategoryCall();
  static FindOneCtegoryCall findOneCtegoryCall = FindOneCtegoryCall();
  static FindOneServiceCall findOneServiceCall = FindOneServiceCall();
  static CreatedCall createdCall = CreatedCall();
  static CrearCategoriaCall crearCategoriaCall = CrearCategoriaCall();
  static DeleteCall deleteCall = DeleteCall();
}

class FindCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Find',
      apiUrl: '${baseUrl}/services/find-all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'categoryId': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic? pagination(dynamic response) => getJsonField(
        response,
        r'''$.meta.pagination''',
      );
}

class FindCategoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Find category',
      apiUrl: '${baseUrl}/services/find-category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic? pagination(dynamic response) => getJsonField(
        response,
        r'''$.meta.pagination''',
      );
}

class FindOneCtegoryCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'findOneCtegory',
      apiUrl: '${baseUrl}/services/find-category-one/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class FindOneServiceCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'findOneService',
      apiUrl: '${baseUrl}/services/find-one/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatedCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? caption = '',
    String? contactUrl = '',
    int? category,
    List<FFUploadedFile>? imagesList,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Created',
      apiUrl: '${baseUrl}/services/created',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'description': description,
        'caption': caption,
        'contactUrl': contactUrl,
        'category': category,
        'images': images,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearCategoriaCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    FFUploadedFile? image,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'crear categoria',
      apiUrl: '${baseUrl}/services/created-category',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'description': description,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = ServicesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete',
      apiUrl: '${baseUrl}/services/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Services Group Code

/// Start Rutas Admin Group Code

class RutasAdminGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetUserStudentCall getUserStudentCall = GetUserStudentCall();
  static CrarUserComercioOEstudianteCall crarUserComercioOEstudianteCall =
      CrarUserComercioOEstudianteCall();
}

class GetUserStudentCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RutasAdminGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get user student',
      apiUrl: '${baseUrl}/users-permissions/users/getUserEstudiante',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrarUserComercioOEstudianteCall {
  Future<ApiCallResponse> call({
    String? name = '',
    int? category,
    String? email = '',
    int? role,
    String? token = '',
  }) async {
    final baseUrl = RutasAdminGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "category": ${category},
  "email": "${email}",
  "role": ${role}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crar user comercio o estudiante',
      apiUrl: '${baseUrl}/users-permissions/users/custom/crear',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Rutas Admin Group Code

/// Start Discoin Group Code

class DiscoinGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CratedCall cratedCall = CratedCall();
  static FindDescuentosCall findDescuentosCall = FindDescuentosCall();
  static FindOneDescuentoCall findOneDescuentoCall = FindOneDescuentoCall();
  static EliminarCall eliminarCall = EliminarCall();
  static ObtnerCategoriasCall obtnerCategoriasCall = ObtnerCategoriasCall();
  static CrearCaregoriaCall crearCaregoriaCall = CrearCaregoriaCall();
}

class CratedCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    double? porceint,
    String? typeUsing = '',
    String? start = '',
    String? end = '',
    int? comerce,
    String? category = '',
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'crated',
      apiUrl: '${baseUrl}/discounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'description': description,
        'porceint': porceint,
        'typeUsing': typeUsing,
        'start': start,
        'end': end,
        'comerce': comerce,
        'category': category,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindDescuentosCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? nameCommerce = '',
    String? q = '',
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Find descuentos',
      apiUrl: '${baseUrl}/discounts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'categoryId': categoryId,
        'nameCommerce': nameCommerce,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindOneDescuentoCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'find one descuento',
      apiUrl: '${baseUrl}/discounts/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EliminarCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'eliminar',
      apiUrl: '${baseUrl}/discounts/${uuid}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObtnerCategoriasCall {
  Future<ApiCallResponse> call({
    int? page,
    int? pageSize,
    String? q = '',
    int? categoryId,
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obtner categorias',
      apiUrl: '${baseUrl}/discount-categories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'page': page,
        'pageSize': pageSize,
        'q': q,
        'categoryId': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearCaregoriaCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? token = '',
  }) async {
    final baseUrl = DiscoinGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear caregoria',
      apiUrl: '${baseUrl}/discount-categories',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Discoin Group Code

/// Start plan Group Code

class PlanGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static BucarPlanesCall bucarPlanesCall = BucarPlanesCall();
  static MiPlanCall miPlanCall = MiPlanCall();
  static BuscarUnPlanCall buscarUnPlanCall = BuscarUnPlanCall();
  static ObtenerTokenTarjetaCall obtenerTokenTarjetaCall =
      ObtenerTokenTarjetaCall();
  static GenerarPagoCall generarPagoCall = GenerarPagoCall();
  static GenerarSuscripcionCall generarSuscripcionCall =
      GenerarSuscripcionCall();
  static VerificarSuscripcionCall verificarSuscripcionCall =
      VerificarSuscripcionCall();
  static RestarSuscripcionBebidaCall restarSuscripcionBebidaCall =
      RestarSuscripcionBebidaCall();
}

class BucarPlanesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Bucar planes',
      apiUrl: '${baseUrl}/plans',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MiPlanCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'mi plan',
      apiUrl: '${baseUrl}/plans/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarUnPlanCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buscar un plan',
      apiUrl: '${baseUrl}/plans/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObtenerTokenTarjetaCall {
  Future<ApiCallResponse> call({
    String? cardNumber = '',
    String? cardHolderName = '',
    String? cardHolderIdentiType = '',
    String? cardHolderIdentiNumber = '',
    String? securityCode = '',
    int? expirationMonth,
    int? expirationYear,
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obtener token tarjeta',
      apiUrl: '${baseUrl}/plans/get-token-card',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'card_number': cardNumber,
        'name': cardHolderName,
        'type': cardHolderIdentiType,
        'number': cardHolderIdentiNumber,
        'security_code': securityCode,
        'expiration_month': expirationMonth,
        'expiration_year': expirationYear,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  String? csv(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.last_four_digits''',
      ));
}

class GenerarPagoCall {
  Future<ApiCallResponse> call({
    String? tokenCard = '',
    String? productType = '',
    String? producId = '',
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GenerarPago',
      apiUrl: '${baseUrl}/plans/payment-item',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'tokenCard': tokenCard,
        'productType': productType,
        'productId': producId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerarSuscripcionCall {
  Future<ApiCallResponse> call({
    String? tokenCard = '',
    String? productType = '',
    String? productId = '',
    String? cardNumber = '',
    String? securityCode = '',
    String? expirationMonth = '',
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Generar Suscripcion',
      apiUrl: '${baseUrl}/plans/payment-suscription',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'tokenCard': tokenCard,
        'productType': productType,
        'productId': productId,
        'card_number': cardNumber,
        'security_code': securityCode,
        'expiration_month': expirationMonth,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerificarSuscripcionCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'verificarSuscripcion',
      apiUrl: '${baseUrl}/suscriptions/validate-suscriptions/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'uuid': uuid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RestarSuscripcionBebidaCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = PlanGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'restarSuscripcionBebida',
      apiUrl: '${baseUrl}/suscriptions/restar-bebida/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'uuid': uuid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End plan Group Code

/// Start Housing Group Code

class HousingGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static ObtenerTodosLosHousingCall obtenerTodosLosHousingCall =
      ObtenerTodosLosHousingCall();
  static ObtenerUnHousingCall obtenerUnHousingCall = ObtenerUnHousingCall();
  static EliminarHousningCall eliminarHousningCall = EliminarHousningCall();
  static CreearHousingCall creearHousingCall = CreearHousingCall();
  static EditarHousingCall editarHousingCall = EditarHousingCall();
}

class ObtenerTodosLosHousingCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = HousingGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obtener todos los housing',
      apiUrl: '${baseUrl}/housigns',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic? pagination(dynamic response) => getJsonField(
        response,
        r'''$.meta.pagination''',
      );
}

class ObtenerUnHousingCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = HousingGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obtener un housing',
      apiUrl: '${baseUrl}/housigns/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class EliminarHousningCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = HousingGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'eliminar housning',
      apiUrl: '${baseUrl}/housigns/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreearHousingCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? description = '',
    String? caption = '',
    double? price,
    String? type = '',
    List<FFUploadedFile>? imagesList,
    FFUploadedFile? portada,
    String? urlContacto = '',
    int? banos,
    int? habitaciones,
    double? area,
    String? typeHousing = '',
    int? limitPerson = 0,
    String? token = '',
  }) async {
    final baseUrl = HousingGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'creear housing',
      apiUrl: '${baseUrl}/housigns',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'caption': caption,
        'price': price,
        'type': type,
        'images': images,
        'portada': portada,
        'urlContacto': urlContacto,
        'banos': banos,
        'habitaciones': habitaciones,
        'area': area,
        'typeHousing': typeHousing,
        'limitPerson': limitPerson,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditarHousingCall {
  Future<ApiCallResponse> call({
    int? id,
    int? limitPerson,
    String? typeHousing = '',
    double? area,
    int? habitaciones,
    int? banos,
    String? urlContacto = '',
    FFUploadedFile? portada,
    List<FFUploadedFile>? imagesList,
    double? price,
    String? caption = '',
    String? description = '',
    String? title = '',
    String? type = '',
    String? token = '',
  }) async {
    final baseUrl = HousingGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'editar Housing',
      apiUrl: '${baseUrl}/housigns/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'caption': caption,
        'price': price,
        'type': type,
        'images': images,
        'portada': portada,
        'urlContacto': urlContacto,
        'banos': banos,
        'habitaciones': habitaciones,
        'area': area,
        'typeHousing': typeHousing,
        'limitPerson': limitPerson,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Housing Group Code

/// Start Estadisticas Group Code

class EstadisticasGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static ObtenerPersonasVisitanLocalReservasCall
      obtenerPersonasVisitanLocalReservasCall =
      ObtenerPersonasVisitanLocalReservasCall();
  static NumeroVistasPerfilCall numeroVistasPerfilCall =
      NumeroVistasPerfilCall();
  static NumeroDeEventosCall numeroDeEventosCall = NumeroDeEventosCall();
  static ToasLasEstadisticasCall toasLasEstadisticasCall =
      ToasLasEstadisticasCall();
}

class ObtenerPersonasVisitanLocalReservasCall {
  Future<ApiCallResponse> call({
    String? groupBy = '',
    String? startDate = '',
    String? endDate = '',
    String? token = '',
  }) async {
    final baseUrl = EstadisticasGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obtener personas visitan local reservas',
      apiUrl: '${baseUrl}/bookings/estadisticas/reservas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'groupBy': groupBy,
        'startDate': startDate,
        'endDate': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NumeroVistasPerfilCall {
  Future<ApiCallResponse> call({
    String? groupBy = 'day',
    String? startDate = '',
    String? endDate = '',
    String? token = '',
  }) async {
    final baseUrl = EstadisticasGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Numero vistas perfil',
      apiUrl: '${baseUrl}/bookings/estadisticas/visita-perfil',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'groupBy': groupBy,
        'startDate': startDate,
        'endDate': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NumeroDeEventosCall {
  Future<ApiCallResponse> call({
    String? groupBy = 'day',
    String? startDate = '',
    String? endDate = '',
    String? token = '',
  }) async {
    final baseUrl = EstadisticasGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Numero de eventos',
      apiUrl: '${baseUrl}/bookings/estadisticas/eventos',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'groupBy': groupBy,
        'startDate': startDate,
        'endDate': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ToasLasEstadisticasCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = EstadisticasGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'toas las estadisticas',
      apiUrl: '${baseUrl}/bookings/estadisticas/todas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Estadisticas Group Code

/// Start Transacction Group Code

class TransacctionGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static BuscarTransaccionesAdminCall buscarTransaccionesAdminCall =
      BuscarTransaccionesAdminCall();
  static BuscarTransaccionAdminCall buscarTransaccionAdminCall =
      BuscarTransaccionAdminCall();
}

class BuscarTransaccionesAdminCall {
  Future<ApiCallResponse> call({
    String? endDate = '',
    String? startDate = '',
    String? groupBy = '',
    String? owner = '',
    String? token = '',
  }) async {
    final baseUrl = TransacctionGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'buscar transacciones admin',
      apiUrl: '${baseUrl}/transacctions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'endDate': endDate,
        'startDate': startDate,
        'groupBy': groupBy,
        'ownerName': owner,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarTransaccionAdminCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = TransacctionGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'buscar  transaccion Admin',
      apiUrl: '${baseUrl}/transacctions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Transacction Group Code

/// Start chat Group Code

class ChatGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://server.baisargentina.com/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static BuscarOCrearChatCall buscarOCrearChatCall = BuscarOCrearChatCall();
  static ListarChatsCall listarChatsCall = ListarChatsCall();
  static CrearMensajeCall crearMensajeCall = CrearMensajeCall();
  static AsignarUsuarioAChatCall asignarUsuarioAChatCall =
      AsignarUsuarioAChatCall();
}

class BuscarOCrearChatCall {
  Future<ApiCallResponse> call({
    String? asunto = '',
    String? description = '',
    String? token = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "asunto": "${asunto}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar o crear chat',
      apiUrl: '${baseUrl}/chats/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarChatsCall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? pageSize = 15,
    int? pageCount = 0,
    String? q = '',
    String? token = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listar chats',
      apiUrl: '${baseUrl}/chats',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'page': page,
        'pageSize': pageSize,
        'pageCount': pageCount,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearMensajeCall {
  Future<ApiCallResponse> call({
    String? text = '',
    String? chatUuid = '',
    String? uuid = '',
    String? chatId = '',
    String? timestamp = '',
    String? id = '',
    List<FFUploadedFile>? imagesList,
    String? token = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      token: token,
    );
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'crear mensaje',
      apiUrl: '${baseUrl}/chat-messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'text': text,
        'chat_uuid': chatUuid,
        'uuid': uuid,
        'timestamp': timestamp,
        'chatId': chatId,
        'images': images,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsignarUsuarioAChatCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'asignar usuario a chat',
      apiUrl: '${baseUrl}/chats/ingresar/${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'uuid': uuid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End chat Group Code

class ApiRegisterCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? email = '',
    String? name = '',
    String? country = '',
    String? university = '',
    String? birth = '',
    String? lastName = '',
    String? phone = '',
    bool? inArgentina,
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${email}",
  "email": "${email}",
  "name": "${name}",
  "lastName": "${lastName}",
  "password": "${password}",
  "birth": "${birth}",
  "university": "${university}",
  "inArgentina": "${inArgentina}",
  "country": "${country}",
  "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Register',
      apiUrl: 'https://server.baisargentina.com/api/auth/local/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? user(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.jwt''',
      ));
  static dynamic? error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class ApiCreateEventsCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? nombreComercio = '',
    int? organizador,
    String? placeUrl = '',
    String? fecha = '',
    String? fechaInicioVenta = '',
    String? fechaFinVenta = '',
    String? precio = '',
    String? horaInicioEvento = '',
    String? horaFinEvento = '',
    String? restriccion = '',
    String? limitePersonas = '',
    List<FFUploadedFile>? imagesList,
    FFUploadedFile? portada,
    String? token = '',
    String? type = 'pay',
    int? categoryId,
    bool? isBais = true,
    String? detenerVentas = '',
    String? nameOrganizerNoBais = '',
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Api CreateEvents',
      apiUrl: 'https://server.baisargentina.com/api/events',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'description': description,
        'nombreComercio': nombreComercio,
        'organizador': organizador,
        'placeUrl': placeUrl,
        'fecha': fecha,
        'fechaInicioVenta': fechaInicioVenta,
        'fechaFinVenta': fechaFinVenta,
        'precio': precio,
        'horaInicioEvento': horaInicioEvento,
        'horaFinEvento': horaFinEvento,
        'restriccion': restriccion,
        'limitePersonas': limitePersonas,
        'images': images,
        'portada': portada,
        'type': type,
        'categoryID': categoryId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class ApiGetCategoriesCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get Categories',
      apiUrl: 'https://server.baisargentina.com/api/event-categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
