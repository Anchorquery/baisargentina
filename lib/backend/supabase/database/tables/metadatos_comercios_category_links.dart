import '../database.dart';

class MetadatosComerciosCategoryLinksTable
    extends SupabaseTable<MetadatosComerciosCategoryLinksRow> {
  @override
  String get tableName => 'metadatos_comercios_category_links';

  @override
  MetadatosComerciosCategoryLinksRow createRow(Map<String, dynamic> data) =>
      MetadatosComerciosCategoryLinksRow(data);
}

class MetadatosComerciosCategoryLinksRow extends SupabaseDataRow {
  MetadatosComerciosCategoryLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetadatosComerciosCategoryLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get metadatosComercioId => getField<int>('metadatos_comercio_id');
  set metadatosComercioId(int? value) =>
      setField<int>('metadatos_comercio_id', value);

  int? get commerceCategoryId => getField<int>('commerce_category_id');
  set commerceCategoryId(int? value) =>
      setField<int>('commerce_category_id', value);
}
