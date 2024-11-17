import '../database.dart';

class HousignsTable extends SupabaseTable<HousignsRow> {
  @override
  String get tableName => 'housigns';

  @override
  HousignsRow createRow(Map<String, dynamic> data) => HousignsRow(data);
}

class HousignsRow extends SupabaseDataRow {
  HousignsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HousignsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get urlContacto => getField<String>('url_contacto');
  set urlContacto(String? value) => setField<String>('url_contacto', value);

  int? get banos => getField<int>('banos');
  set banos(int? value) => setField<int>('banos', value);

  int? get habitaciones => getField<int>('habitaciones');
  set habitaciones(int? value) => setField<int>('habitaciones', value);

  double? get area => getField<double>('area');
  set area(double? value) => setField<double>('area', value);

  String? get caption => getField<String>('caption');
  set caption(String? value) => setField<String>('caption', value);

  String? get typeHousing => getField<String>('type_housing');
  set typeHousing(String? value) => setField<String>('type_housing', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
