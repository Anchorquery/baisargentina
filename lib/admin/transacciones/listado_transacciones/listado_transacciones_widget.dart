import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listado_transacciones_model.dart';
export 'listado_transacciones_model.dart';

class ListadoTransaccionesWidget extends StatefulWidget {
  const ListadoTransaccionesWidget({super.key});

  @override
  State<ListadoTransaccionesWidget> createState() =>
      _ListadoTransaccionesWidgetState();
}

class _ListadoTransaccionesWidgetState extends State<ListadoTransaccionesWidget>
    with TickerProviderStateMixin {
  late ListadoTransaccionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListadoTransaccionesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiObtenerTransaccionessAdmin =
          await TransacctionGroup.buscarTransaccionesAdminCall.call(
        token: currentAuthenticationToken,
        groupBy: 'day',
      );

      if ((_model.apiObtenerTransaccionessAdmin?.succeeded ?? true)) {
        _model.data = getJsonField(
          (_model.apiObtenerTransaccionessAdmin?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        _model.loading = !_model.loading;
        safeSetState(() {});
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dividerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Builder(
              builder: (context) {
                if (_model.loading == false) {
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('HomeAdmin');
                              },
                              child: Icon(
                                Icons.chevron_left_rounded,
                                color: Color(0xFFFF8F14),
                                size: 24.0,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Transacciones',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onFieldSubmitted: (_) async {
                                var _shouldSetState = false;
                                _model.apiObtenerTransaccionesAdminporNombre =
                                    await TransacctionGroup
                                        .buscarTransaccionesAdminCall
                                        .call(
                                  token: currentAuthenticationToken,
                                  owner: _model.textController.text,
                                );

                                _shouldSetState = true;
                                if ((_model
                                        .apiObtenerTransaccionesAdminporNombre
                                        ?.succeeded ??
                                    true)) {
                                  _model.data = getJsonField(
                                    (_model.apiObtenerTransaccionesAdminporNombre
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.data''',
                                    true,
                                  )!
                                      .toList()
                                      .cast<dynamic>();
                                  safeSetState(() {});
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Busca por nombre de usuario',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.search_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.apiDescargarPdf =
                                      await TransacctionGroup
                                          .generarPdfTransaccionesCall
                                          .call(
                                    token: currentAuthenticationToken,
                                  );

                                  _shouldSetState = true;
                                  if ((_model.apiDescargarPdf?.succeeded ??
                                      true)) {
                                    await downloadFile(
                                      filename: getJsonField(
                                        (_model.apiDescargarPdf?.jsonBody ??
                                            ''),
                                        r'''$.title''',
                                      ).toString(),
                                      url: getJsonField(
                                        (_model.apiDescargarPdf?.jsonBody ??
                                            ''),
                                        r'''$.url''',
                                      ).toString(),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                text: 'Descargar la de tickets',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 30.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final _datePicked1Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate:
                                    (getCurrentTimestamp ?? DateTime(2050)),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Lato',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (_datePicked1Date != null) {
                                safeSetState(() {
                                  _model.datePicked1 = DateTime(
                                    _datePicked1Date.year,
                                    _datePicked1Date.month,
                                    _datePicked1Date.day,
                                  );
                                });
                              }
                              _model.apiObtenerTransaccionesAdminDateInit =
                                  await TransacctionGroup
                                      .buscarTransaccionesAdminCall
                                      .call(
                                endDate: dateTimeFormat(
                                  "d-M-y",
                                  _model.datePicked2,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                token: currentAuthenticationToken,
                                startDate: dateTimeFormat(
                                  "d-M-y",
                                  _model.datePicked1,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              );

                              if ((_model.apiObtenerTransaccionesAdminDateInit
                                      ?.succeeded ??
                                  true)) {
                                _model.data = getJsonField(
                                  (_model.apiObtenerTransaccionesAdminDateInit
                                          ?.jsonBody ??
                                      ''),
                                  r'''$.data''',
                                  true,
                                )!
                                    .toList()
                                    .cast<dynamic>();
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                            text: _model.datePicked1 != null
                                ? dateTimeFormat(
                                    "d/M/y",
                                    _model.datePicked1,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )
                                : 'Fecha inicio',
                            icon: Icon(
                              Icons.calendar_today,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFEBEEF2),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
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
                        if (_model.datePicked1 != null)
                          FFButtonWidget(
                            onPressed: () async {
                              final _datePicked2Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate:
                                    (_model.datePicked1 ?? DateTime(1900)),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Lato',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (_datePicked2Date != null) {
                                safeSetState(() {
                                  _model.datePicked2 = DateTime(
                                    _datePicked2Date.year,
                                    _datePicked2Date.month,
                                    _datePicked2Date.day,
                                  );
                                });
                              }
                              _model.apiObtenerTransaccionesAdminDateEnd =
                                  await TransacctionGroup
                                      .buscarTransaccionesAdminCall
                                      .call(
                                token: currentAuthenticationToken,
                                startDate: dateTimeFormat(
                                  "d-M-y",
                                  _model.datePicked1,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                endDate: dateTimeFormat(
                                  "d-M-y",
                                  _model.datePicked2,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              );

                              if ((_model.apiObtenerTransaccionesAdminDateEnd
                                      ?.succeeded ??
                                  true)) {
                                _model.data = getJsonField(
                                  (_model.apiObtenerTransaccionesAdminDateEnd
                                          ?.jsonBody ??
                                      ''),
                                  r'''$.data''',
                                  true,
                                )!
                                    .toList()
                                    .cast<dynamic>();
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                            text: _model.datePicked2 != null
                                ? dateTimeFormat(
                                    "d/M/y",
                                    _model.datePicked2,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )
                                : 'Fecha fin',
                            icon: Icon(
                              Icons.calendar_today,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFEBEEF2),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.black,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        _model.buttonLoadingDay =
                                            !_model.buttonLoadingDay;
                                        _model.groupBy = 'day';
                                        safeSetState(() {});
                                        _model.apiObtenerTransaccionesAdminbyDay =
                                            await TransacctionGroup
                                                .buscarTransaccionesAdminCall
                                                .call(
                                          token: currentAuthenticationToken,
                                          groupBy: 'day',
                                        );

                                        if ((_model
                                                .apiObtenerTransaccionesAdminbyDay
                                                ?.succeeded ??
                                            true)) {
                                          _model.data = getJsonField(
                                            (_model.apiObtenerTransaccionesAdminbyDay
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.data''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<dynamic>();
                                          _model.buttonLoadingDay =
                                              !_model.buttonLoadingDay;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Hoy',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.groupBy == 'day'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lato',
                                              color: _model.groupBy == 'day'
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      showLoadingIndicator:
                                          _model.buttonLoadingDay == true,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        _model.apiObtenerTransaccionesAdminbyweek =
                                            await TransacctionGroup
                                                .buscarTransaccionesAdminCall
                                                .call(
                                          groupBy: 'week',
                                          token: currentAuthenticationToken,
                                        );

                                        _model.buttonLoadingWeek =
                                            !_model.buttonLoadingWeek;
                                        _model.groupBy = 'week';
                                        safeSetState(() {});
                                        if ((_model
                                                .apiObtenerTransaccionesAdminbyweek
                                                ?.succeeded ??
                                            true)) {
                                          _model.data = getJsonField(
                                            (_model.apiObtenerTransaccionesAdminbyweek
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.data''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<dynamic>();
                                          _model.buttonLoadingWeek =
                                              !_model.buttonLoadingWeek;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Semana',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.groupBy == 'week'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lato',
                                              color: _model.groupBy == 'week'
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      showLoadingIndicator:
                                          _model.buttonLoadingWeek == true,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        _model.buttonLoadingMonth =
                                            !_model.buttonLoadingMonth;
                                        _model.groupBy = 'month';
                                        safeSetState(() {});
                                        _model.apiObtenerTransaccionesAdminbyMonth =
                                            await TransacctionGroup
                                                .buscarTransaccionesAdminCall
                                                .call(
                                          groupBy: 'month',
                                          token: currentAuthenticationToken,
                                        );

                                        if ((_model
                                                .apiObtenerTransaccionesAdminbyMonth
                                                ?.succeeded ??
                                            true)) {
                                          _model.data = getJsonField(
                                            (_model.apiObtenerTransaccionesAdminbyMonth
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.data''',
                                            true,
                                          )!
                                              .toList()
                                              .cast<dynamic>();
                                          _model.buttonLoadingMonth =
                                              !_model.buttonLoadingMonth;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Mes',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.groupBy == 'month'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : FlutterFlowTheme.of(context)
                                                .secondary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lato',
                                              color: _model.groupBy == 'month'
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final tikets = _model.data.toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: tikets.length,
                                        itemBuilder: (context, tiketsIndex) {
                                          final tiketsItem =
                                              tikets[tiketsIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'TransactionDetails',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    getJsonField(
                                                      tiketsItem,
                                                      r'''$.id''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x31FF8F14),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Icon(
                                                          Icons
                                                              .arrow_outward_rounded,
                                                          color:
                                                              Color(0xFFFF8F14),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '${getJsonField(
                                                              tiketsItem,
                                                              r'''$.client.firstname''',
                                                            ).toString()} ${getJsonField(
                                                              tiketsItem,
                                                              r'''$.client.lastname''',
                                                            ).toString()}',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              tiketsItem,
                                                              r'''$.dateCreated''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: Color(
                                                                      0xFFB7BCC2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            'ARS ${getJsonField(
                                                              tiketsItem,
                                                              r'''$.amount''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              tiketsItem,
                                                              r'''$.status''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: Color(
                                                                      0xFFB7BCC2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation']!),
                                                ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ).animateOnPageLoad(animationsMap[
                                                    'dividerOnPageLoadAnimation']!),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return wrapWithModel(
                    model: _model.loaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoaderWidget(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
