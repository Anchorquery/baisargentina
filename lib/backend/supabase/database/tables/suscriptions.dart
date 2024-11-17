import '../database.dart';

class SuscriptionsTable extends SupabaseTable<SuscriptionsRow> {
  @override
  String get tableName => 'suscriptions';

  @override
  SuscriptionsRow createRow(Map<String, dynamic> data) => SuscriptionsRow(data);
}

class SuscriptionsRow extends SupabaseDataRow {
  SuscriptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SuscriptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get start => getField<DateTime>('start');
  set start(DateTime? value) => setField<DateTime>('start', value);

  DateTime? get end => getField<DateTime>('end');
  set end(DateTime? value) => setField<DateTime>('end', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  int? get drinkAvailable => getField<int>('drink_available');
  set drinkAvailable(int? value) => setField<int>('drink_available', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
