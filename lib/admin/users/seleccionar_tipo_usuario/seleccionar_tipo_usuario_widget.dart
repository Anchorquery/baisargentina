import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seleccionar_tipo_usuario_model.dart';
export 'seleccionar_tipo_usuario_model.dart';

class SeleccionarTipoUsuarioWidget extends StatefulWidget {
  const SeleccionarTipoUsuarioWidget({super.key});

  @override
  State<SeleccionarTipoUsuarioWidget> createState() =>
      _SeleccionarTipoUsuarioWidgetState();
}

class _SeleccionarTipoUsuarioWidgetState
    extends State<SeleccionarTipoUsuarioWidget> {
  late SeleccionarTipoUsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeleccionarTipoUsuarioModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Color(0xFFFF8F14),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Selecciona el tipo de usuario',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 45.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('ListaUsuarioComercios');
                    },
                    text: 'Comercios',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFFF8F14),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('ListaUsuarioEstudiantes');
                    },
                    text: 'Estudiantes',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(height: 30.0))
                  .addToEnd(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
