import '../database.dart';

class EventsCategoryLinksTable extends SupabaseTable<EventsCategoryLinksRow> {
  @override
  String get tableName => 'events_category_links';

  @override
  EventsCategoryLinksRow createRow(Map<String, dynamic> data) =>
      EventsCategoryLinksRow(data);
}

class EventsCategoryLinksRow extends SupabaseDataRow {
  EventsCategoryLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsCategoryLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get eventCategoryId => getField<int>('event_category_id');
  set eventCategoryId(int? value) => setField<int>('event_category_id', value);
}
