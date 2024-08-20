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
}

class GetEventsCall {
  Future<ApiCallResponse> call({
    String? categoryId = '0',
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

/// End Events Group Code

/// Start Public Group Code

class PublicGroup {
  static String getBaseUrl() => 'https://server.baisargentina.com/api';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
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
}

class MeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'me',
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

  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
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

class ApiRegisterCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? email = '',
    String? name = '',
    String? country = '',
    bool? inargentina,
    String? university = '',
    String? birth = '',
    FFUploadedFile? images,
    String? lastName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Register',
      apiUrl: 'https://server.baisargentina.com/api/auth/local/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
        'email': email,
        'name': name,
        'country': country,
        'inargentina': university,
        'university': university,
        'birth': birth,
        'lastName': lastName,
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
    String? categoryId = '',
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
