import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_with_middle_button_widget.dart'
    show NavBarWithMiddleButtonWidget;
import 'package:flutter/material.dart';

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
