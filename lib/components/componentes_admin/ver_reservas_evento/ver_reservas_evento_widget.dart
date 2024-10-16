import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ver_reservas_evento_model.dart';
export 'ver_reservas_evento_model.dart';

class VerReservasEventoWidget extends StatefulWidget {
  const VerReservasEventoWidget({super.key});

  @override
  State<VerReservasEventoWidget> createState() =>
      _VerReservasEventoWidgetState();
}

class _VerReservasEventoWidgetState extends State<VerReservasEventoWidget> {
  late VerReservasEventoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerReservasEventoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('ReservasAdmin');
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Ver reservas del evento',
      options: FFButtonOptions(
        height: 40.0,
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).tertiary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Lato',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 3.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
