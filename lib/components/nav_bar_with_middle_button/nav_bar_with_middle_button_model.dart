import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_with_middle_button_widget.dart'
    show NavBarWithMiddleButtonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavBarWithMiddleButtonModel
    extends FlutterFlowModel<NavBarWithMiddleButtonWidget> {
  ///  State fields for stateful widgets in this component.

  var responseScanQr = '';
  // Stores action output result for [Backend Call - API (verificarReserva)] action in MiddleButton widget.
  ApiCallResponse? apiResponseVericarTicket;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
