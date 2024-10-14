import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stat_local_views_model.dart';
export 'stat_local_views_model.dart';

class StatLocalViewsWidget extends StatefulWidget {
  const StatLocalViewsWidget({super.key});

  @override
  State<StatLocalViewsWidget> createState() => _StatLocalViewsWidgetState();
}

class _StatLocalViewsWidgetState extends State<StatLocalViewsWidget>
    with TickerProviderStateMixin {
  late StatLocalViewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatLocalViewsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultxa0 =
          await EstadisticasGroup.obtenerPersonasVisitanLocalReservasCall.call(
        groupBy: _model.groupBy,
        startDate: _model.startDate,
        endDate: _model.endDate,
        token: currentAuthenticationToken,
      );

      if ((_model.apiResultxa0?.succeeded ?? true)) {
        _model.data = EstaditicaStruct.maybeFromMap(getJsonField(
          (_model.apiResultxa0?.jsonBody ?? ''),
          r'''$.data''',
        ));
        _model.loading = false;
        safeSetState(() {});
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ha ocurrido un error'),
              content: Text(getJsonField(
                (_model.apiResultxa0?.jsonBody ?? ''),
                r'''$.error''',
              ).toString().toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
          child: Stack(
            children: [
              Builder(
                builder: (context) {
                  if (_model.loading == false) {
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      60.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Visitas en tu local',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FFIcons.kstats,
                                    color: Color(0xFFFF8F14),
                                    size: 40.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          _model.data?.total?.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: Colors.black,
                                              fontSize: 55.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                      Text(
                                        'Total visitas',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              color: Colors.black,
                                              fontSize: 23.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(width: 15.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 0.0),
                              child: Text(
                                'Rango personalizado',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final _datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: getCurrentTimestamp,
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  if (_datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        _datePickedDate.year,
                                        _datePickedDate.month,
                                        _datePickedDate.day,
                                      );
                                    });
                                  }
                                  _model.apiResultxFiltroInitDate =
                                      await EstadisticasGroup
                                          .obtenerPersonasVisitanLocalReservasCall
                                          .call(
                                    groupBy: 'day',
                                    startDate: dateTimeFormat(
                                      "d-M-y",
                                      _model.datePicked,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultxFiltroInitDate
                                          ?.succeeded ??
                                      true)) {
                                    _model.data = EstaditicaStruct.maybeFromMap(
                                        getJsonField(
                                      (_model.apiResultxFiltroInitDate
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.data''',
                                    ));
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.tabBarController!.animateTo(
                                        0,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    });
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Ha ocurrido un error'),
                                          content: Text(getJsonField(
                                            (_model.apiResultxaPorSemana
                                                    ?.jsonBody ??
                                                ''),
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

                                  safeSetState(() {});
                                },
                                text: _model.datePicked != null
                                    ? dateTimeFormat(
                                        "d/M/y",
                                        _model.datePicked,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : 'Fecha de inicio',
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
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onDoubleTap: () async {
                                    _model.apiResultxaForDay =
                                        await EstadisticasGroup
                                            .obtenerPersonasVisitanLocalReservasCall
                                            .call(
                                      groupBy: 'day',
                                      startDate: _model.startDate,
                                      endDate: _model.endDate,
                                    );

                                    if ((_model.apiResultxaForDay?.succeeded ??
                                        true)) {
                                      _model.data =
                                          EstaditicaStruct.maybeFromMap(
                                              getJsonField(
                                        (_model.apiResultxaForDay?.jsonBody ??
                                            ''),
                                        r'''$.data''',
                                      ));
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                                  onLongPress: () async {
                                    _model.apiResultxaForDayCopy =
                                        await EstadisticasGroup
                                            .obtenerPersonasVisitanLocalReservasCall
                                            .call(
                                      groupBy: 'day',
                                      startDate: _model.startDate,
                                      endDate: _model.endDate,
                                    );

                                    if ((_model
                                            .apiResultxaForDayCopy?.succeeded ??
                                        true)) {
                                      _model.data =
                                          EstaditicaStruct.maybeFromMap(
                                              getJsonField(
                                        (_model.apiResultxaForDayCopy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.data''',
                                      ));
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(0.0, 0),
                                        child: FlutterFlowButtonTabBar(
                                          useToggleButtonStyle: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    letterSpacing: 0.0,
                                                  ),
                                          unselectedLabelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    letterSpacing: 0.0,
                                                  ),
                                          labelColor: Colors.white,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          backgroundColor: Color(0xFFFF8F14),
                                          unselectedBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          unselectedBorderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 50.0,
                                          elevation: 0.0,
                                          buttonMargin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          tabs: [
                                            Tab(
                                              text: 'Dias',
                                            ),
                                            Tab(
                                              text: 'Semana',
                                            ),
                                            Tab(
                                              text: 'Mes',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [
                                              () async {
                                                _model.apiResultxaPordia =
                                                    await EstadisticasGroup
                                                        .obtenerPersonasVisitanLocalReservasCall
                                                        .call(
                                                  groupBy: _model.groupBy,
                                                  startDate: _model.startDate,
                                                  endDate: _model.endDate,
                                                  token:
                                                      currentAuthenticationToken,
                                                );

                                                if ((_model.apiResultxaPordia
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.data = EstaditicaStruct
                                                      .maybeFromMap(
                                                          getJsonField(
                                                    (_model.apiResultxaPordia
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  ));
                                                  safeSetState(() {});
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Ha ocurrido un error'),
                                                        content:
                                                            Text(getJsonField(
                                                          (_model.apiResultxaPordia
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.error''',
                                                        ).toString()),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                                safeSetState(() {});
                                              },
                                              () async {
                                                _model.apiResultxaPorSemana =
                                                    await EstadisticasGroup
                                                        .obtenerPersonasVisitanLocalReservasCall
                                                        .call(
                                                  groupBy: 'week',
                                                  startDate: _model.startDate,
                                                  endDate: _model.endDate,
                                                  token:
                                                      currentAuthenticationToken,
                                                );

                                                if ((_model.apiResultxaPorSemana
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.data = EstaditicaStruct
                                                      .maybeFromMap(
                                                          getJsonField(
                                                    (_model.apiResultxaPorSemana
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  ));
                                                  safeSetState(() {});
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Ha ocurrido un error'),
                                                        content:
                                                            Text(getJsonField(
                                                          (_model.apiResultxaPorSemana
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.error''',
                                                        ).toString()),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                                safeSetState(() {});
                                              },
                                              () async {
                                                _model.apiResultxaPorMes =
                                                    await EstadisticasGroup
                                                        .obtenerPersonasVisitanLocalReservasCall
                                                        .call(
                                                  groupBy: 'month',
                                                  startDate: _model.startDate,
                                                  endDate: _model.endDate,
                                                  token:
                                                      currentAuthenticationToken,
                                                );

                                                if ((_model.apiResultxaPorMes
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.data = EstaditicaStruct
                                                      .maybeFromMap(
                                                          getJsonField(
                                                    (_model.apiResultxaPorMes
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  ));
                                                  safeSetState(() {});
                                                }

                                                safeSetState(() {});
                                              }
                                            ][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 370.0,
                                                      height: 230.0,
                                                      child:
                                                          FlutterFlowBarChart(
                                                        barData: [
                                                          FFBarChartData(
                                                            yData: _model
                                                                .data!.values,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          )
                                                        ],
                                                        xLabels:
                                                            _model.data!.labels,
                                                        barWidth: 16.0,
                                                        barBorderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        groupSpace: 8.0,
                                                        alignment:
                                                            BarChartAlignment
                                                                .spaceAround,
                                                        chartStylingInfo:
                                                            ChartStylingInfo(
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          showBorder: false,
                                                        ),
                                                        axisBounds:
                                                            AxisBounds(),
                                                        xAxisLabelInfo:
                                                            AxisLabelInfo(
                                                          title: () {
                                                            if (_model
                                                                    .groupBy ==
                                                                'day') {
                                                              return 'Dias';
                                                            } else if (_model
                                                                    .groupBy ==
                                                                'week') {
                                                              return 'Semanas';
                                                            } else {
                                                              return 'Meses';
                                                            }
                                                          }(),
                                                          titleTextStyle:
                                                              TextStyle(
                                                            fontSize: 10.0,
                                                          ),
                                                          showLabels: true,
                                                          labelTextStyle:
                                                              GoogleFonts
                                                                  .getFont(
                                                            'Lato',
                                                            fontSize: 10.0,
                                                          ),
                                                          labelInterval: 10.0,
                                                          reservedSize: 28.0,
                                                        ),
                                                        yAxisLabelInfo:
                                                            AxisLabelInfo(
                                                          title: 'Usuarios',
                                                          titleTextStyle:
                                                              TextStyle(
                                                            fontSize: 14.0,
                                                          ),
                                                          showLabels: true,
                                                          labelTextStyle:
                                                              TextStyle(
                                                            fontSize: 10.0,
                                                          ),
                                                          labelInterval: 10.0,
                                                          reservedSize: 42.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 370.0,
                                                    height: 230.0,
                                                    child: FlutterFlowBarChart(
                                                      barData: [
                                                        FFBarChartData(
                                                          yData: _model
                                                              .data!.values,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        )
                                                      ],
                                                      xLabels:
                                                          _model.data!.labels,
                                                      barWidth: 16.0,
                                                      barBorderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      groupSpace: 8.0,
                                                      alignment:
                                                          BarChartAlignment
                                                              .spaceAround,
                                                      chartStylingInfo:
                                                          ChartStylingInfo(
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        showBorder: false,
                                                      ),
                                                      axisBounds: AxisBounds(),
                                                      xAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title: 'Semanas',
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            GoogleFonts.getFont(
                                                          'Lato',
                                                          fontSize: 10.0,
                                                        ),
                                                        labelInterval: 10.0,
                                                        reservedSize: 28.0,
                                                      ),
                                                      yAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title: 'Usuarios',
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        labelInterval: 10.0,
                                                        reservedSize: 42.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 370.0,
                                                    height: 230.0,
                                                    child: FlutterFlowBarChart(
                                                      barData: [
                                                        FFBarChartData(
                                                          yData: _model
                                                              .data!.values,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        )
                                                      ],
                                                      xLabels:
                                                          _model.data!.labels,
                                                      barWidth: 16.0,
                                                      barBorderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      groupSpace: 8.0,
                                                      alignment:
                                                          BarChartAlignment
                                                              .spaceAround,
                                                      chartStylingInfo:
                                                          ChartStylingInfo(
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        showBorder: false,
                                                      ),
                                                      axisBounds: AxisBounds(),
                                                      xAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title: 'Mes',
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            GoogleFonts.getFont(
                                                          'Lato',
                                                          fontSize: 10.0,
                                                        ),
                                                        labelInterval: 10.0,
                                                        reservedSize: 28.0,
                                                      ),
                                                      yAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title: 'Usuarios',
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                        labelInterval: 10.0,
                                                        reservedSize: 42.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
      ),
    );
  }
}
