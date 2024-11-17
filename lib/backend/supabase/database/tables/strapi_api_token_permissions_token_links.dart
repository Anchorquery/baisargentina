import '../database.dart';

class StrapiApiTokenPermissionsTokenLinksTable
    extends SupabaseTable<StrapiApiTokenPermissionsTokenLinksRow> {
  @override
  String get tableName => 'strapi_api_token_permissions_token_links';

  @override
  StrapiApiTokenPermissionsTokenLinksRow createRow(Map<String, dynamic> data) =>
      StrapiApiTokenPermissionsTokenLinksRow(data);
}

class StrapiApiTokenPermissionsTokenLinksRow extends SupabaseDataRow {
  StrapiApiTokenPermissionsTokenLinksRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => StrapiApiTokenPermissionsTokenLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get apiTokenPermissionId => getField<int>('api_token_permission_id');
  set apiTokenPermissionId(int? value) =>
      setField<int>('api_token_permission_id', value);

  int? get apiTokenId => getField<int>('api_token_id');
  set apiTokenId(int? value) => setField<int>('api_token_id', value);

  double? get apiTokenPermissionOrder =>
      getField<double>('api_token_permission_order');
  set apiTokenPermissionOrder(double? value) =>
      setField<double>('api_token_permission_order', value);
}
