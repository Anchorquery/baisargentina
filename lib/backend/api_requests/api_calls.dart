import 'dart:convert';

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
      apiUrl: '$baseUrl/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
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
  dynamic pagination(dynamic response) => getJsonField(
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
      apiUrl: '$baseUrl/events/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic portada(dynamic response) => getJsonField(
        response,
        r'''$.data.portada''',
      );
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.data.images''',
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
  "identifier": "$identifier",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/auth/local',
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
  dynamic user(dynamic response) => getJsonField(
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
  "event": $event
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateReserve',
      apiUrl: '$baseUrl/bookings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
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
    String? organizador = '',
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
        'Authorization': 'Bearer $token',
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

class UploadImagesCall {
  static Future<ApiCallResponse> call({
    String? field = '',
    String? refId = '',
    String? ref = '',
    List<String>? filesList,
  }) async {
    final files = _serializeList(filesList);

    return ApiManager.instance.makeApiCall(
      callName: 'UploadImages',
      apiUrl: 'https://server.baisargentina.com/api/upload',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzIwNTgyODU0LCJleHAiOjE3MjMxNzQ4NTR9.tqZ8fYUAWm9jI-zvUnrvgpOnIt2r7FhEjjw6DeWi58M',
      },
      params: {
        'ref': ref,
        'refId': refId,
        'field': field,
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

class ApiMeCall {
  static Future<ApiCallResponse> call({
    String? token =
        'yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMjk1ODQ3MiwiZXhwIjoxNzI1NTUwNDcyfQ.YTnfgg9uDGqVnIevH9stb-vwqeIH6Z9LPRdeA8-V4jw',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api  me',
      apiUrl: 'https://server.baisargentina.com/api/users/me',
      callType: ApiCallType.GET,
      headers: {
        'authorization':
            'Bearer yJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTcyMjk1ODQ3MiwiZXhwIjoxNzI1NTUwNDcyfQ.YTnfgg9uDGqVnIevH9stb-vwqeIH6Z9LPRdeA8-V4jw',
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
