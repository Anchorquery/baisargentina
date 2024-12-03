import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import '../../flutter_flow/lat_lng.dart';
import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        data = (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  Enum,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case MetadatosComerciosRow:
            return MetadatosComerciosRow(data);
          case TransacctionsClientLinksRow:
            return TransacctionsClientLinksRow(data);
          case BookingsSupervisorLinksRow:
            return BookingsSupervisorLinksRow(data);
          case ChatsLastMessageSeenByLinksRow:
            return ChatsLastMessageSeenByLinksRow(data);
          case UpPermissionsRow:
            return UpPermissionsRow(data);
          case StrapiApiTokenPermissionsTokenLinksRow:
            return StrapiApiTokenPermissionsTokenLinksRow(data);
          case CommerceCategoriesRow:
            return CommerceCategoriesRow(data);
          case StrapiWebhooksRow:
            return StrapiWebhooksRow(data);
          case StrapiTransferTokenPermissionsTokenLinksRow:
            return StrapiTransferTokenPermissionsTokenLinksRow(data);
          case EventCategoriesRow:
            return EventCategoriesRow(data);
          case HousignsCreadorLinksRow:
            return HousignsCreadorLinksRow(data);
          case SuscriptionsSuscriptorLinksRow:
            return SuscriptionsSuscriptorLinksRow(data);
          case AdminUsersRolesLinksRow:
            return AdminUsersRolesLinksRow(data);
          case ChatMessagesRow:
            return ChatMessagesRow(data);
          case ChatsRow:
            return ChatsRow(data);
          case StrapiDatabaseSchemaRow:
            return StrapiDatabaseSchemaRow(data);
          case UpPermissionsRoleLinksRow:
            return UpPermissionsRoleLinksRow(data);
          case MetadatosComerciosCategoryLinksRow:
            return MetadatosComerciosCategoryLinksRow(data);
          case ServicesServiceCategoryLinksRow:
            return ServicesServiceCategoryLinksRow(data);
          case StrapiGoogleAuthGoogleCredentialRow:
            return StrapiGoogleAuthGoogleCredentialRow(data);
          case StrapiApiTokensRow:
            return StrapiApiTokensRow(data);
          case SuscriptionsTransactionLinksRow:
            return SuscriptionsTransactionLinksRow(data);
          case StrapiReleasesRow:
            return StrapiReleasesRow(data);
          case EventsCategoryLinksRow:
            return EventsCategoryLinksRow(data);
          case StrapiReleaseActionsRow:
            return StrapiReleaseActionsRow(data);
          case UploadFoldersRow:
            return UploadFoldersRow(data);
          case ServicesRow:
            return ServicesRow(data);
          case BookingsRow:
            return BookingsRow(data);
          case MetadatosComerciosComercioLinksRow:
            return MetadatosComerciosComercioLinksRow(data);
          case ChatsLastMessageSentByLinksRow:
            return ChatsLastMessageSentByLinksRow(data);
          case AdminUsersRow:
            return AdminUsersRow(data);
          case AdminPermissionsRoleLinksRow:
            return AdminPermissionsRoleLinksRow(data);
          case AdminRolesRow:
            return AdminRolesRow(data);
          case AdminPermissionsRow:
            return AdminPermissionsRow(data);
          case StrapiTransferTokenPermissionsRow:
            return StrapiTransferTokenPermissionsRow(data);
          case FilesRelatedMorphsRow:
            return FilesRelatedMorphsRow(data);
          case StrapiReleaseActionsReleaseLinksRow:
            return StrapiReleaseActionsReleaseLinksRow(data);
          case ServicesCreatedLinksRow:
            return ServicesCreatedLinksRow(data);
          case SuscriptionsPlanLinksRow:
            return SuscriptionsPlanLinksRow(data);
          case TransacctionsRow:
            return TransacctionsRow(data);
          case StrapiMigrationsRow:
            return StrapiMigrationsRow(data);
          case ViewPerfilsRow:
            return ViewPerfilsRow(data);
          case ChatMessagesChatLinksRow:
            return ChatMessagesChatLinksRow(data);
          case EventsCreadorLinksRow:
            return EventsCreadorLinksRow(data);
          case I18nLocaleRow:
            return I18nLocaleRow(data);
          case EmailTemplatesRow:
            return EmailTemplatesRow(data);
          case ServiceCategoriesRow:
            return ServiceCategoriesRow(data);
          case HousignsRow:
            return HousignsRow(data);
          case FilesRow:
            return FilesRow(data);
          case StrapiTransferTokensRow:
            return StrapiTransferTokensRow(data);
          case PlansRow:
            return PlansRow(data);
          case DiscountsCreateLinksRow:
            return DiscountsCreateLinksRow(data);
          case SuscriptionsRow:
            return SuscriptionsRow(data);
          case UpRolesRow:
            return UpRolesRow(data);
          case ChatsUsersLinksRow:
            return ChatsUsersLinksRow(data);
          case EventsRow:
            return EventsRow(data);
          case EventsOrganizadorLinksRow:
            return EventsOrganizadorLinksRow(data);
          case BookingsEventLinksRow:
            return BookingsEventLinksRow(data);
          case DiscountsRow:
            return DiscountsRow(data);
          case FilesFolderLinksRow:
            return FilesFolderLinksRow(data);
          case ViewPerfilsComercioLinksRow:
            return ViewPerfilsComercioLinksRow(data);
          case DiscountsCommerceLinksRow:
            return DiscountsCommerceLinksRow(data);
          case ViewPerfilsVisualizadorLinksRow:
            return ViewPerfilsVisualizadorLinksRow(data);
          case StrapiCoreStoreSettingsRow:
            return StrapiCoreStoreSettingsRow(data);
          case StrapiApiTokenPermissionsRow:
            return StrapiApiTokenPermissionsRow(data);
          case DiscountCategoriesRow:
            return DiscountCategoriesRow(data);
          case DiscountsCategoryLinksRow:
            return DiscountsCategoryLinksRow(data);
          case UpUsersRoleLinksRow:
            return UpUsersRoleLinksRow(data);
          case BookingsOwnerLinksRow:
            return BookingsOwnerLinksRow(data);
          case UpUsersRow:
            return UpUsersRow(data);
          case ChatMessagesUserLinksRow:
            return ChatMessagesUserLinksRow(data);
          case UploadFoldersParentLinksRow:
            return UploadFoldersParentLinksRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
