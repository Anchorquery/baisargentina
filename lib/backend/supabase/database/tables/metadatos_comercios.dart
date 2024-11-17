import '../database.dart';

class MetadatosComerciosTable extends SupabaseTable<MetadatosComerciosRow> {
  @override
  String get tableName => 'metadatos_comercios';

  @override
  MetadatosComerciosRow createRow(Map<String, dynamic> data) =>
      MetadatosComerciosRow(data);
}

class MetadatosComerciosRow extends SupabaseDataRow {
  MetadatosComerciosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetadatosComerciosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool? get lunes => getField<bool>('lunes');
  set lunes(bool? value) => setField<bool>('lunes', value);

  bool? get martes => getField<bool>('martes');
  set martes(bool? value) => setField<bool>('martes', value);

  bool? get miercoles => getField<bool>('miercoles');
  set miercoles(bool? value) => setField<bool>('miercoles', value);

  bool? get jueves => getField<bool>('jueves');
  set jueves(bool? value) => setField<bool>('jueves', value);

  bool? get viernes => getField<bool>('viernes');
  set viernes(bool? value) => setField<bool>('viernes', value);

  bool? get sabado => getField<bool>('sabado');
  set sabado(bool? value) => setField<bool>('sabado', value);

  bool? get domingo => getField<bool>('domingo');
  set domingo(bool? value) => setField<bool>('domingo', value);

  PostgresTime? get startDate => getField<PostgresTime>('start_date');
  set startDate(PostgresTime? value) =>
      setField<PostgresTime>('start_date', value);

  PostgresTime? get endDate => getField<PostgresTime>('end_date');
  set endDate(PostgresTime? value) => setField<PostgresTime>('end_date', value);

  String? get nameCommerce => getField<String>('name_commerce');
  set nameCommerce(String? value) => setField<String>('name_commerce', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get urlUbicacion => getField<String>('url_ubicacion');
  set urlUbicacion(String? value) => setField<String>('url_ubicacion', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
