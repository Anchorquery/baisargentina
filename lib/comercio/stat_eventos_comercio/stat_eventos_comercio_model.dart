import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'stat_eventos_comercio_widget.dart' show StatEventosComercioWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StatEventosComercioModel
    extends FlutterFlowModel<StatEventosComercioWidget> {
  ///  Local state fields for this page.

  EstaditicaStruct? data;
  void updateDataStruct(Function(EstaditicaStruct) updateFn) {
    updateFn(data ??= EstaditicaStruct());
  }

  String? groupBy = 'day';

  String? startDate;

  String? endDate;

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Numero de eventos)] action in StatEventosComercio widget.
  ApiCallResponse? apiResultVisitasLocal;
  DateTime? datePicked;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    loaderModel.dispose();
  }
}
