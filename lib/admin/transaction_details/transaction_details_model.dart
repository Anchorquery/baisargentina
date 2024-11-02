import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'transaction_details_widget.dart' show TransactionDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionDetailsModel
    extends FlutterFlowModel<TransactionDetailsWidget> {
  ///  Local state fields for this page.

  dynamic data;

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (buscar  transaccion Admin)] action in TransactionDetails widget.
  ApiCallResponse? apiResultGetTransaccion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
