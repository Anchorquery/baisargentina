import '../database.dart';

class MetadatosComerciosComercioLinksTable
    extends SupabaseTable<MetadatosComerciosComercioLinksRow> {
  @override
  String get tableName => 'metadatos_comercios_comercio_links';

  @override
  MetadatosComerciosComercioLinksRow createRow(Map<String, dynamic> data) =>
      MetadatosComerciosComercioLinksRow(data);
}

class MetadatosComerciosComercioLinksRow extends SupabaseDataRow {
  MetadatosComerciosComercioLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetadatosComerciosComercioLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get metadatosComercioId => getField<int>('metadatos_comercio_id');
  set metadatosComercioId(int? value) =>
      setField<int>('metadatos_comercio_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
