import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicio_model.dart';
export 'inicio_model.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({super.key});

  @override
  State<InicioWidget> createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  late InicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (RootPageContext.isInactiveRootPage(context)) {
        return;
      }
      if (currentAuthenticationToken != null &&
          currentAuthenticationToken != '') {
        _model.apiResponseMe = await UserGroup.meCall.call(
          token: currentAuthenticationToken,
        );

        if ((_model.apiResponseMe?.succeeded ?? true) == true) {
          setState(() {});
          authManager.updateAuthUserData(
            authenticationToken: currentAuthenticationToken,
            authUid: currentUserData?.id?.toString(),
            userData: UserStruct(
              id: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.id,
              name: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.name,
              lastName: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.lastName,
              email: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.email,
              birth: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.birth,
              university: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.university,
              country: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.country,
              role: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.role,
              confirmed: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.confirmed,
              inArgentina: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.inArgentina,
              avatar: UserStruct.maybeFromMap(
                      (_model.apiResponseMe?.jsonBody ?? ''))
                  ?.avatar,
            ),
          );
        } else {
          authManager.updateAuthUserData();
          FFAppState().token = '';
          FFAppState().user = UserStruct.fromSerializableMap(jsonDecode('{}'));
          setState(() {});
        }
      } else {
        return;
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Subtract.png',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Group_11.png',
                        width: 199.0,
                        height: 142.0,
                        fit: BoxFit.none,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('login');
                    },
                    text: 'Iniciar sesión',
                    options: FFButtonOptions(
                      width: 347.0,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('registro');
                    },
                    text: 'Registrarse',
                    options: FFButtonOptions(
                      width: 347.0,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                  child: Text(
                    '¡Argentina te espera! Inicia sesión o regístrate en BAIS y vive la mejor experiencia de intercambio.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
