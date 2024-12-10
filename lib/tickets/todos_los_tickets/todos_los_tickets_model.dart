import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'todos_los_tickets_widget.dart' show TodosLosTicketsWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TodosLosTicketsModel extends FlutterFlowModel<TodosLosTicketsWidget> {
  ///  Local state fields for this page.

  List<dynamic> data = [];
  void addToData(dynamic item) => data.add(item);
  void removeFromData(dynamic item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, dynamic item) => data.insert(index, item);
  void updateDataAtIndex(int index, Function(dynamic) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  String groupBy = 'day';

  String? startDate;

  String? endDate = '';

  bool buttonLoadingDay = false;

  bool buttonLoadingWeek = false;

  bool buttonLoadingMonth = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (find reservas admin)] action in TodosLosTickets widget.
  ApiCallResponse? apiObtenerReservasAdmin;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in TextField widget.
  ApiCallResponse? apiObtenerReservasAdminporNombre;
  DateTime? datePicked1;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in fechaInicioVentaLabel widget.
  ApiCallResponse? apiObtenerReservasAdminDateInit;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in finFilterDaLabel widget.
  ApiCallResponse? apiObtenerReservasAdminDateEnd;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in Button widget.
  ApiCallResponse? apiObtenerReservasAdminbyDay;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in Button widget.
  ApiCallResponse? apiObtenerReservasAdminbyweek;
  // Stores action output result for [Backend Call - API (find reservas admin)] action in Button widget.
  ApiCallResponse? apiObtenerReservasAdminbyMonth;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    loaderModel.dispose();
  }
}
