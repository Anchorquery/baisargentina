import '../database.dart';

class StrapiGoogleAuthGoogleCredentialTable
    extends SupabaseTable<StrapiGoogleAuthGoogleCredentialRow> {
  @override
  String get tableName => 'strapi-google-auth_google-credential';

  @override
  StrapiGoogleAuthGoogleCredentialRow createRow(Map<String, dynamic> data) =>
      StrapiGoogleAuthGoogleCredentialRow(data);
}

class StrapiGoogleAuthGoogleCredentialRow extends SupabaseDataRow {
  StrapiGoogleAuthGoogleCredentialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiGoogleAuthGoogleCredentialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get googleClientId => getField<String>('google_client_id');
  set googleClientId(String? value) =>
      setField<String>('google_client_id', value);

  String? get googleClientSecret => getField<String>('google_client_secret');
  set googleClientSecret(String? value) =>
      setField<String>('google_client_secret', value);

  String? get googleRedirectUrl => getField<String>('google_redirect_url');
  set googleRedirectUrl(String? value) =>
      setField<String>('google_redirect_url', value);

  dynamic? get googleScopes => getField<dynamic>('google_scopes');
  set googleScopes(dynamic? value) => setField<dynamic>('google_scopes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get publishedAt => getField<DateTime>('published_at');
  set publishedAt(DateTime? value) => setField<DateTime>('published_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
