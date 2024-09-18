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

  dynamic? user(dynamic response) => getJsonField(
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

/// End plan Group Code

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
