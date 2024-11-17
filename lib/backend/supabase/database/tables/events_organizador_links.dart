import '../database.dart';

class EventsOrganizadorLinksTable
    extends SupabaseTable<EventsOrganizadorLinksRow> {
  @override
  String get tableName => 'events_organizador_links';

  @override
  EventsOrganizadorLinksRow createRow(Map<String, dynamic> data) =>
      EventsOrganizadorLinksRow(data);
}

class EventsOrganizadorLinksRow extends SupabaseDataRow {
  EventsOrganizadorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsOrganizadorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
