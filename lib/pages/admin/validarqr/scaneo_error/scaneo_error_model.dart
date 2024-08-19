import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'scaneo_error_widget.dart' show ScaneoErrorWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScaneoErrorModel extends FlutterFlowModel<ScaneoErrorWidget> {
  ///  State fields for stateful widgets in this page.

  var responseScanQr = '';
  // Stores action output result for [Backend Call - API (verificarReserva)] action in Button widget.
  ApiCallResponse? apiResponseVericarTicket;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
