import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'servicio_model.dart';
export 'servicio_model.dart';

class ServicioWidget extends StatefulWidget {
  const ServicioWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<ServicioWidget> createState() => _ServicioWidgetState();
}

class _ServicioWidgetState extends State<ServicioWidget> {
  late ServicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultService = await ServicesGroup.findOneServiceCall.call(
        id: widget!.id,
        token: currentAuthenticationToken,
      );

      if ((_model.apiResultService?.succeeded ?? true)) {
        _model.service = ServiceStruct.maybeFromMap(getJsonField(
          (_model.apiResultService?.jsonBody ?? ''),
          r'''$.data''',
        ));
        _model.loading = false;
        safeSetState(() {});
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        Icons.chevron_left_outlined,
                        color: Color(0xFFFF8F14),
                        size: 24.0,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            110.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF00215B),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            FFIcons.kvector,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          _model.service?.name,
                          'text',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 50.0),
                      child: Text(
                        valueOrDefault<String>(
                          _model.service?.description,
                          'text',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              if (_model.service!.images.length > 0)
                Builder(
                  builder: (context) {
                    final images = _model.service?.images?.toList() ?? [];

                    return Container(
                      width: double.infinity,
                      height: 200.0,
                      child: CarouselSlider.builder(
                        itemCount: images.length,
                        itemBuilder: (context, imagesIndex, _) {
                          final imagesItem = images[imagesIndex];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              imagesItem.url,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: max(0, min(1, images.length - 1)),
                          viewportFraction: 0.5,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    );
                  },
                ),
              if (_model.service?.contactUrl != null &&
                  _model.service?.contactUrl != '')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await launchURL(_model.service!.contactUrl);
                    },
                    text: 'Contactar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFFF8F14),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
              if (currentUserData?.role == 1)
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var _shouldSetState = false;
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Eliminar servicio'),
                                            content: Text(
                                                'Confirme que desea eliminar el servicio'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirmar'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                _model.apiResulthug =
                                    await ServicesGroup.deleteCall.call(
                                  id: widget!.id,
                                  token: currentAuthenticationToken,
                                );

                                _shouldSetState = true;
                                if ((_model.apiResulthug?.succeeded ?? true)) {
                                  unawaited(
                                    () async {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(
                                                'Servicio eliminado exitosamente'),
                                            content: Text(
                                                'Será  redireccionado al listado de servicios'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }(),
                                  );

                                  context.goNamed('servicios');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Ha ocurrido un error'),
                                        content: Text(getJsonField(
                                          (_model.apiResulthug?.jsonBody ?? ''),
                                          r'''$.error''',
                                        ).toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                Navigator.pop(context);
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            child: Icon(
                              Icons.cancel_outlined,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'editarServicio',
                                queryParameters: {
                                  'id': serializeParam(
                                    widget!.id,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.edit,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 20.0)),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
