import '../database.dart';

class StrapiTransferTokensTable extends SupabaseTable<StrapiTransferTokensRow> {
  @override
  String get tableName => 'strapi_transfer_tokens';

  @override
  StrapiTransferTokensRow createRow(Map<String, dynamic> data) =>
      StrapiTransferTokensRow(data);
}

class StrapiTransferTokensRow extends SupabaseDataRow {
  StrapiTransferTokensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiTransferTokensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get accessKey => getField<String>('access_key');
  set accessKey(String? value) => setField<String>('access_key', value);

  DateTime? get lastUsedAt => getField<DateTime>('last_used_at');
  set lastUsedAt(DateTime? value) => setField<DateTime>('last_used_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  int? get lifespan => getField<int>('lifespan');
  set lifespan(int? value) => setField<int>('lifespan', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
