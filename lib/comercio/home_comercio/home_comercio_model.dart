import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/comercio_componente/scan_error/scan_error_widget.dart';
import '/components/comercio_componente/successful_scan/successful_scan_widget.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_comercio_widget.dart' show HomeComercioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeComercioModel extends FlutterFlowModel<HomeComercioWidget> {
  ///  Local state fields for this page.

  CommercePerfilStruct? data;
  void updateDataStruct(Function(CommercePerfilStruct) updateFn) {
    updateFn(data ??= CommercePerfilStruct());
  }

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (me )] action in HomeComercio widget.
  ApiCallResponse? apiResultMeCoomercio;
  var resultScanQr = '';
  // Stores action output result for [Backend Call - API (verificarSuscripcion)] action in Card widget.
  ApiCallResponse? apiResultucb;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
  }
}
