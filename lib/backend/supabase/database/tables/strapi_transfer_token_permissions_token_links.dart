import '../database.dart';

class StrapiTransferTokenPermissionsTokenLinksTable
    extends SupabaseTable<StrapiTransferTokenPermissionsTokenLinksRow> {
  @override
  String get tableName => 'strapi_transfer_token_permissions_token_links';

  @override
  StrapiTransferTokenPermissionsTokenLinksRow createRow(
          Map<String, dynamic> data) =>
      StrapiTransferTokenPermissionsTokenLinksRow(data);
}

class StrapiTransferTokenPermissionsTokenLinksRow extends SupabaseDataRow {
  StrapiTransferTokenPermissionsTokenLinksRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => StrapiTransferTokenPermissionsTokenLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get transferTokenPermissionId =>
      getField<int>('transfer_token_permission_id');
  set transferTokenPermissionId(int? value) =>
      setField<int>('transfer_token_permission_id', value);

  int? get transferTokenId => getField<int>('transfer_token_id');
  set transferTokenId(int? value) => setField<int>('transfer_token_id', value);

  double? get transferTokenPermissionOrder =>
      getField<double>('transfer_token_permission_order');
  set transferTokenPermissionOrder(double? value) =>
      setField<double>('transfer_token_permission_order', value);
}
