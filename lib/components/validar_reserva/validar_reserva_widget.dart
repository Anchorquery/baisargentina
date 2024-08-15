import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'validar_reserva_model.dart';
export 'validar_reserva_model.dart';

class ValidarReservaWidget extends StatefulWidget {
  const ValidarReservaWidget({super.key});

  @override
  State<ValidarReservaWidget> createState() => _ValidarReservaWidgetState();
}

class _ValidarReservaWidgetState extends State<ValidarReservaWidget> {
  late ValidarReservaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidarReservaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        context.pushNamed('scan');
      },
      text: 'Validar reserva',
      icon: const Icon(
        Icons.qr_code_scanner,
        size: 15.0,
      ),
      options: FFButtonOptions(
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).tertiary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Lato',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 3.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
