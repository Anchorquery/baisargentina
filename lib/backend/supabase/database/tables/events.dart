import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get placeUrl => getField<String>('place_url');
  set placeUrl(String? value) => setField<String>('place_url', value);

  String? get placeDescription => getField<String>('place_description');
  set placeDescription(String? value) =>
      setField<String>('place_description', value);

  String? get nombreComercio => getField<String>('nombre_comercio');
  set nombreComercio(String? value) =>
      setField<String>('nombre_comercio', value);

  DateTime? get fechaInicioVenta => getField<DateTime>('fecha_inicio_venta');
  set fechaInicioVenta(DateTime? value) =>
      setField<DateTime>('fecha_inicio_venta', value);

  DateTime? get fechaFinVenta => getField<DateTime>('fecha_fin_venta');
  set fechaFinVenta(DateTime? value) =>
      setField<DateTime>('fecha_fin_venta', value);

  PostgresTime? get horaInicioEvento =>
      getField<PostgresTime>('hora_inicio_evento');
  set horaInicioEvento(PostgresTime? value) =>
      setField<PostgresTime>('hora_inicio_evento', value);

  PostgresTime? get horaFinEvento => getField<PostgresTime>('hora_fin_evento');
  set horaFinEvento(PostgresTime? value) =>
      setField<PostgresTime>('hora_fin_evento', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get restriccion => getField<String>('restriccion');
  set restriccion(String? value) => setField<String>('restriccion', value);

  int? get limitePersonas => getField<int>('limite_personas');
  set limitePersonas(int? value) => setField<int>('limite_personas', value);

  double? get precio => getField<double>('precio');
  set precio(double? value) => setField<double>('precio', value);

  bool? get isBais => getField<bool>('is_bais');
  set isBais(bool? value) => setField<bool>('is_bais', value);

  String? get detenerVentas => getField<String>('detener_ventas');
  set detenerVentas(String? value) => setField<String>('detener_ventas', value);

  String? get nameOrganizerNoBais => getField<String>('name_organizer_no_bais');
  set nameOrganizerNoBais(String? value) =>
      setField<String>('name_organizer_no_bais', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
