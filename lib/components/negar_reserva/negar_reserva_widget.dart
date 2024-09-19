import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'negar_reserva_model.dart';
export 'negar_reserva_model.dart';

class NegarReservaWidget extends StatefulWidget {
  const NegarReservaWidget({super.key});

  @override
  State<NegarReservaWidget> createState() => _NegarReservaWidgetState();
}

class _NegarReservaWidgetState extends State<NegarReservaWidget> {
  late NegarReservaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NegarReservaModel());
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
      fillColor: FlutterFlowTheme.of(context).error,
      icon: Icon(
        Icons.cancel_outlined,
        color: Colors.white,
        size: 24.0,
      ),
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
