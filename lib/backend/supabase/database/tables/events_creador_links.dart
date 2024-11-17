import '../database.dart';

class EventsCreadorLinksTable extends SupabaseTable<EventsCreadorLinksRow> {
  @override
  String get tableName => 'events_creador_links';

  @override
  EventsCreadorLinksRow createRow(Map<String, dynamic> data) =>
      EventsCreadorLinksRow(data);
}

class EventsCreadorLinksRow extends SupabaseDataRow {
  EventsCreadorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsCreadorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
