import '../database.dart';

class EventCategoriesTable extends SupabaseTable<EventCategoriesRow> {
  @override
  String get tableName => 'event_categories';

  @override
  EventCategoriesRow createRow(Map<String, dynamic> data) =>
      EventCategoriesRow(data);
}

class EventCategoriesRow extends SupabaseDataRow {
  EventCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get state => getField<bool>('state');
  set state(bool? value) => setField<bool>('state', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
