import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'detalle_reserva_widget.dart' show DetalleReservaWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class DetalleReservaModel extends FlutterFlowModel<DetalleReservaWidget> {
  ///  Local state fields for this page.

  BookingStruct? data;
  void updateDataStruct(Function(BookingStruct) updateFn) {
    updateFn(data ??= BookingStruct());
  }

  DateTime? fecha;

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (findme One)] action in DetalleReserva widget.
  ApiCallResponse? apiMeBookingByUuid;
  // Stores action output result for [Backend Call - API (find one admin)] action in DetalleReserva widget.
  ApiCallResponse? apiMeBookingByUuidAdmin;
  // Stores action output result for [Backend Call - API (GenerarPdfTicketById)] action in IconButton widget.
  ApiCallResponse? apiDescargarPdfUserById;
  // Stores action output result for [Backend Call - API (cambiarEstadoRerserva)] action in Button widget.
  ApiCallResponse? apiResultActivarReserva;
  // Stores action output result for [Backend Call - API (cambiarEstadoRerserva)] action in Button widget.
  ApiCallResponse? apiResultCancelarReserva;
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
