import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aprobar_reserva_model.dart';
export 'aprobar_reserva_model.dart';

class AprobarReservaWidget extends StatefulWidget {
  const AprobarReservaWidget({super.key});

  @override
  State<AprobarReservaWidget> createState() => _AprobarReservaWidgetState();
}

class _AprobarReservaWidgetState extends State<AprobarReservaWidget> {
  late AprobarReservaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AprobarReservaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 20.0,
      borderWidth: 0.0,
      buttonSize: 40.0,
      fillColor: FlutterFlowTheme.of(context).success,
      icon: Icon(
        Icons.check_circle_outline_sharp,
        color: Colors.white,
        size: 24.0,
      ),
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
