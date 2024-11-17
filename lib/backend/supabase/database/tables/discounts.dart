import '../database.dart';

class DiscountsTable extends SupabaseTable<DiscountsRow> {
  @override
  String get tableName => 'discounts';

  @override
  DiscountsRow createRow(Map<String, dynamic> data) => DiscountsRow(data);
}

class DiscountsRow extends SupabaseDataRow {
  DiscountsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiscountsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get porceint => getField<double>('porceint');
  set porceint(double? value) => setField<double>('porceint', value);

  String? get typeUsing => getField<String>('type_using');
  set typeUsing(String? value) => setField<String>('type_using', value);

  DateTime? get start => getField<DateTime>('start');
  set start(DateTime? value) => setField<DateTime>('start', value);

  DateTime? get end => getField<DateTime>('end');
  set end(DateTime? value) => setField<DateTime>('end', value);

  bool? get state => getField<bool>('state');
  set state(bool? value) => setField<bool>('state', value);

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
