import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'scan_widget.dart' show ScanWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScanModel extends FlutterFlowModel<ScanWidget> {
  ///  State fields for stateful widgets in this page.

  var barcodeValue = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
