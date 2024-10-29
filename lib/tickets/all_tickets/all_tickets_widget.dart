import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_tickets_model.dart';
export 'all_tickets_model.dart';

class AllTicketsWidget extends StatefulWidget {
  const AllTicketsWidget({super.key});

  @override
  State<AllTicketsWidget> createState() => _AllTicketsWidgetState();
}

class _AllTicketsWidgetState extends State<AllTicketsWidget>
    with TickerProviderStateMixin {
  late AllTicketsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTicketsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiObtenerReservasAdmin =
          await ReserveGroup.findReservasAdminCall.call(
        token: currentAuthenticationToken,
      );

      if ((_model.apiObtenerReservasAdmin?.succeeded ?? true)) {
        _model.data = getJsonField(
          (_model.apiObtenerReservasAdmin?.jsonBody ?? ''),
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
      onTap: () => FocusScope.of(context).unfocus(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                context.safePop();
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
                                    'Tickets',
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
                              0.0, 15.0, 0.0, 16.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onFieldSubmitted: (_) async {
                                _model.apiObtenerReservasAdminporNombre =
                                    await ReserveGroup.findReservasAdminCall
                                        .call(
                                  token: currentAuthenticationToken,
                                  ownerName: _model.textController.text,
                                );

                                if ((_model.apiObtenerReservasAdminporNombre
                                        ?.succeeded ??
                                    true)) {
                                  _model.data = getJsonField(
                                    (_model.apiObtenerReservasAdminporNombre
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Descargar l. de tickets',
                                options: FFButtonOptions(
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
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('CreateATicket');
                                },
                                text: 'Crear ticket manual',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
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
                              _model.apiObtenerReservasAdminDateInit =
                                  await ReserveGroup.findReservasAdminCall.call(
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

                              if ((_model.apiObtenerReservasAdminDateInit
                                      ?.succeeded ??
                                  true)) {
                                _model.data = getJsonField(
                                  (_model.apiObtenerReservasAdminDateInit
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
                              _model.apiObtenerReservasAdminDateEnd =
                                  await ReserveGroup.findReservasAdminCall.call(
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

                              if ((_model.apiObtenerReservasAdminDateEnd
                                      ?.succeeded ??
                                  true)) {
                                _model.data = getJsonField(
                                  (_model.apiObtenerReservasAdminDateEnd
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
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.buttonLoadingDay =
                                      !_model.buttonLoadingDay;
                                  _model.groupBy = 'day';
                                  safeSetState(() {});
                                  _model.apiObtenerReservasAdminbyDay =
                                      await ReserveGroup.findReservasAdminCall
                                          .call(
                                    token: currentAuthenticationToken,
                                    groupBy: 'day',
                                  );

                                  if ((_model.apiObtenerReservasAdminbyDay
                                          ?.succeeded ??
                                      true)) {
                                    _model.data = getJsonField(
                                      (_model.apiObtenerReservasAdminbyDay
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
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: _model.groupBy == 'day'
                                      ? FlutterFlowTheme.of(context).tertiary
                                      : FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: _model.groupBy == 'day'
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                showLoadingIndicator:
                                    _model.buttonLoadingDay == true,
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.buttonLoadingWeek =
                                      !_model.buttonLoadingWeek;
                                  _model.groupBy = 'week';
                                  safeSetState(() {});
                                  _model.apiObtenerReservasAdminbyweek =
                                      await ReserveGroup.findReservasAdminCall
                                          .call(
                                    token: currentAuthenticationToken,
                                    groupBy: 'week',
                                  );

                                  if ((_model.apiObtenerReservasAdminbyweek
                                          ?.succeeded ??
                                      true)) {
                                    _model.data = getJsonField(
                                      (_model.apiObtenerReservasAdminbyweek
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
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: _model.groupBy == 'week'
                                      ? FlutterFlowTheme.of(context).tertiary
                                      : FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: _model.groupBy == 'week'
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
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
                                  _model.apiObtenerReservasAdminbyMonth =
                                      await ReserveGroup.findReservasAdminCall
                                          .call(
                                    token: currentAuthenticationToken,
                                    groupBy: 'month',
                                  );

                                  if ((_model.apiObtenerReservasAdminbyMonth
                                          ?.succeeded ??
                                      true)) {
                                    _model.data = getJsonField(
                                      (_model.apiObtenerReservasAdminbyMonth
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
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: _model.groupBy == 'month'
                                      ? FlutterFlowTheme.of(context).tertiary
                                      : FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lato',
                                        color: _model.groupBy == 'month'
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                showLoadingIndicator: false,
                              ),
                            ],
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
                                                'reservaIdAdmin',
                                                queryParameters: {
                                                  'uuid': serializeParam(
                                                    getJsonField(
                                                      tiketsItem,
                                                      r'''$.uuid''',
                                                    ).toString(),
                                                    ParamType.String,
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
                                                          Icons.receipt,
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
                                                              r'''$.owner.firstname''',
                                                            ).toString()} ${getJsonField(
                                                              tiketsItem,
                                                              r'''$.owner.lastname''',
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
                                                              r'''$.event.precio''',
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
                                                            'Recibido',
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
