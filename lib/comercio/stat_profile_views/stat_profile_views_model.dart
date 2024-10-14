import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'stat_profile_views_widget.dart' show StatProfileViewsWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StatProfileViewsModel extends FlutterFlowModel<StatProfileViewsWidget> {
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

  // Stores action output result for [Backend Call - API (Numero vistas perfil)] action in StatProfileViews widget.
  ApiCallResponse? apiResultNumeroVista;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Numero vistas perfil)] action in fechaInicioVentaLabel widget.
  ApiCallResponse? apiResultNumeroVistaFilterInitDay;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (Numero vistas perfil)] action in Tab widget.
  ApiCallResponse? apiResultNumeroVistaDia;
  // Stores action output result for [Backend Call - API (Numero vistas perfil)] action in Tab widget.
  ApiCallResponse? apiResultNumeroVistaSemana;
  // Stores action output result for [Backend Call - API (Numero vistas perfil)] action in Tab widget.
  ApiCallResponse? apiResultNumeroVistaMes;
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
