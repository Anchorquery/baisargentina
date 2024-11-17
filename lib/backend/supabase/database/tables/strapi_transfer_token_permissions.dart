import '../database.dart';

class StrapiTransferTokenPermissionsTable
    extends SupabaseTable<StrapiTransferTokenPermissionsRow> {
  @override
  String get tableName => 'strapi_transfer_token_permissions';

  @override
  StrapiTransferTokenPermissionsRow createRow(Map<String, dynamic> data) =>
      StrapiTransferTokenPermissionsRow(data);
}

class StrapiTransferTokenPermissionsRow extends SupabaseDataRow {
  StrapiTransferTokenPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiTransferTokenPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
