import '../database.dart';

class PlansTable extends SupabaseTable<PlansRow> {
  @override
  String get tableName => 'plans';

  @override
  PlansRow createRow(Map<String, dynamic> data) => PlansRow(data);
}

class PlansRow extends SupabaseDataRow {
  PlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get discointPrice => getField<double>('discoint_price');
  set discointPrice(double? value) => setField<double>('discoint_price', value);

  String? get duration => getField<String>('duration');
  set duration(String? value) => setField<String>('duration', value);

  int? get drinksAvailable => getField<int>('drinks_available');
  set drinksAvailable(int? value) => setField<int>('drinks_available', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
