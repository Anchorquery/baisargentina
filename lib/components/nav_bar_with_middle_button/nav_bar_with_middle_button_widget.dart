import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_with_middle_button_model.dart';
export 'nav_bar_with_middle_button_model.dart';

class NavBarWithMiddleButtonWidget extends StatefulWidget {
  const NavBarWithMiddleButtonWidget({super.key});

  @override
  State<NavBarWithMiddleButtonWidget> createState() =>
      _NavBarWithMiddleButtonWidgetState();
}

class _NavBarWithMiddleButtonWidgetState
    extends State<NavBarWithMiddleButtonWidget> {
  late NavBarWithMiddleButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x1A57636C),
                          offset: Offset(
                            0.0,
                            -10.0,
                          ),
                          spreadRadius: 0.1,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.7),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (currentUserData?.role == 1)
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.home,
                      color: Color(0xFF9299A1),
                      size: 35.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('HomeAdmin');
                    },
                  ),
                if (currentUserData?.role != 1)
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      FFIcons.keventos,
                      color: Color(0xFF9299A1),
                      size: 35.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('events');
                    },
                  ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    FFIcons.kdescuentos,
                    color: Color(0xFF9299A1),
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Descuentos');
                  },
                ),
                if ((currentUserData?.role == 1) ||
                    (currentUserData?.role == 3))
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 4.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.responseScanQr =
                                await FlutterBarcodeScanner.scanBarcode(
                              '#C62828', // scanning line color
                              'Cancel', // cancel button text
                              true, // whether to show the flash icon
                              ScanMode.QR,
                            );

                            _shouldSetState = true;
                            if (_model.responseScanQr != null &&
                                _model.responseScanQr != '') {
                              _model.apiResponseVericarTicket =
                                  await ReserveGroup.verificarReservaCall.call(
                                token: currentAuthenticationToken,
                                data: _model.responseScanQr,
                              );

                              _shouldSetState = true;
                              if ((_model.apiResponseVericarTicket?.succeeded ??
                                      true) ==
                                  true) {
                                context.pushNamed(
                                  'scaneoExitoso',
                                  queryParameters: {
                                    'uuid': serializeParam(
                                      getJsonField(
                                        (_model.apiResponseVericarTicket
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.data.uuid''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                context.pushNamed(
                                  'scaneoError',
                                  queryParameters: {
                                    'uuid': serializeParam(
                                      getJsonField(
                                        (_model.apiResponseVericarTicket
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.data.uuid''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            } else {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    FFIcons.khousign,
                    color: Color(0xFF9299A1),
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('housigns');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    FFIcons.kperfil,
                    color: Color(0xFF9299A1),
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('userProfile');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
