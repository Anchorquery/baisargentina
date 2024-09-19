import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/loader/loader_widget.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'events_model.dart';
export 'events_model.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({super.key});

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  late EventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResponseEvents = await EventsGroup.getEventsCall.call(
            token: currentAuthenticationToken,
          );

          if (!(_model.apiResponseEvents?.succeeded ?? true)) {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Ha ocurrido un error'),
                  content: Text(getJsonField(
                    (_model.apiResponseEvents?.jsonBody ?? ''),
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
            return;
          }
        }),
        Future(() async {
          _model.apiResponseCategories = await ApiGetCategoriesCall.call();

          if (!(_model.apiResponseCategories?.succeeded ?? true)) {
            return;
          }
        }),
      ]);
      _model.items = (getJsonField(
        (_model.apiResponseEvents?.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
              .toList()
              .map<EventsStruct?>(EventsStruct.maybeFromMap)
              .toList() as Iterable<EventsStruct?>)
          .withoutNulls
          .toList()
          .cast<EventsStruct>();
      _model.pagination = PaginationStruct.maybeFromMap(getJsonField(
        (_model.apiResponseEvents?.jsonBody ?? ''),
        r'''$.meta.pagination''',
      ));
      _model.categories = (getJsonField(
        (_model.apiResponseCategories?.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
              .toList()
              .map<CategoryStruct?>(CategoryStruct.maybeFromMap)
              .toList() as Iterable<CategoryStruct?>)
          .withoutNulls
          .toList()
          .cast<CategoryStruct>();
      _model.loading = false;
      safeSetState(() {});
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        floatingActionButton: Visibility(
          visible: _model.loading == false,
          child: Align(
            alignment: AlignmentDirectional(1.0, 0.8),
            child: FloatingActionButton(
              onPressed: () async {
                context.pushNamed('create');
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 99.0,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 34.0,
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Builder(
                builder: (context) {
                  if (_model.loading == false) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/EVENTOS.png',
                              ).image,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 15.0, 10.0, 10.0),
                                                child: Text(
                                                  'EVENTOS',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.05,
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final categorie = _model.categories
                                                .unique((e) => e.id)
                                                .toList();

                                            return Container(
                                              width: double.infinity,
                                              height: 180.0,
                                              child: CarouselSlider.builder(
                                                itemCount: categorie.length,
                                                itemBuilder: (context,
                                                    categorieIndex, _) {
                                                  final categorieItem =
                                                      categorie[categorieIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.cateorySelected =
                                                          categorieItem.id;
                                                      safeSetState(() {});
                                                      _model.apiResponseGetEventsbyCategory =
                                                          await EventsGroup
                                                              .getEventsCall
                                                              .call(
                                                        categoryId:
                                                            categorieItem.id
                                                                .toString(),
                                                        token:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .apiResponseGetEventsbyCategory
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.items =
                                                            (getJsonField(
                                                          (_model.apiResponseGetEventsbyCategory
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.data''',
                                                          true,
                                                        )!
                                                                        .toList()
                                                                        .map<EventsStruct?>(EventsStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        EventsStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<
                                                                    EventsStruct>();
                                                        _model.loading = false;
                                                        _model.pagination =
                                                            PaginationStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                          (_model.apiResponseGetEventsbyCategory
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.meta.pagination''',
                                                        ));
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    onLongPress: () async {
                                                      _model.cateorySelected =
                                                          categorieItem.id;
                                                      safeSetState(() {});
                                                      _model.apiResponseGetEventsbyCategoryCopy =
                                                          await EventsGroup
                                                              .getEventsCall
                                                              .call(
                                                        categoryId:
                                                            categorieItem.id
                                                                .toString(),
                                                        token:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .apiResponseGetEventsbyCategoryCopy
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.items =
                                                            (getJsonField(
                                                          (_model.apiResponseGetEventsbyCategoryCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.data''',
                                                          true,
                                                        )!
                                                                        .toList()
                                                                        .map<EventsStruct?>(EventsStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        EventsStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<
                                                                    EventsStruct>();
                                                        _model.loading = false;
                                                        _model.pagination =
                                                            PaginationStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                          (_model.apiResponseGetEventsbyCategoryCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.meta.pagination''',
                                                        ));
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    child: Text(
                                                      categorieItem.name,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            fontSize: 19.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  );
                                                },
                                                carouselController: _model
                                                        .carouselController ??=
                                                    CarouselSliderController(),
                                                options: CarouselOptions(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          1,
                                                          categorie.length -
                                                              1)),
                                                  viewportFraction: 0.5,
                                                  disableCenter: false,
                                                  enlargeCenterPage: true,
                                                  enlargeFactor: 0.25,
                                                  enableInfiniteScroll: false,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  autoPlay: false,
                                                  onPageChanged: (index, _) =>
                                                      _model.carouselCurrentIndex =
                                                          index,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 90.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              final data =
                                                  _model.items.toList();
                                              if (data.isEmpty) {
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  child: EmptyListWidget(
                                                    message:
                                                        'No hay eventos para esta categoria',
                                                    error: 'Sin datos',
                                                  ),
                                                );
                                              }

                                              return RefreshIndicator(
                                                key: Key(
                                                    'RefreshIndicator_6hut1c67'),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                onRefresh: () async {
                                                  await Future.wait([
                                                    Future(() async {
                                                      _model.apiResponseEventsCopy =
                                                          await EventsGroup
                                                              .getEventsCall
                                                              .call(
                                                        token:
                                                            currentAuthenticationToken,
                                                      );

                                                      if (!(_model
                                                              .apiResponseEventsCopy
                                                              ?.succeeded ??
                                                          true)) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ha ocurrido un error'),
                                                              content: Text(
                                                                  'Intente luego'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        return;
                                                      }
                                                    }),
                                                    Future(() async {
                                                      _model.apiResponseCategoriesCopy =
                                                          await ApiGetCategoriesCall
                                                              .call();

                                                      if (!(_model
                                                              .apiResponseCategoriesCopy
                                                              ?.succeeded ??
                                                          true)) {
                                                        return;
                                                      }
                                                    }),
                                                  ]);
                                                },
                                                child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: data.length,
                                                  itemBuilder:
                                                      (context, dataIndex) {
                                                    final dataItem =
                                                        data[dataIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  25.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'event',
                                                                queryParameters:
                                                                    {
                                                                  'id':
                                                                      serializeParam(
                                                                    dataItem.id,
                                                                    ParamType
                                                                        .int,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        20.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        20.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20.0),
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.9,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.176,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF7F8FA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20.0),
                                                                  ),
                                                                ),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'event',
                                                                      queryParameters:
                                                                          {
                                                                        'id':
                                                                            serializeParam(
                                                                          dataItem
                                                                              .id,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              CachedNetworkImage(
                                                                            fadeInDuration:
                                                                                Duration(milliseconds: 500),
                                                                            fadeOutDuration:
                                                                                Duration(milliseconds: 500),
                                                                            imageUrl:
                                                                                getJsonField(
                                                                              dataItem.portada.toMap(),
                                                                              r'''$.url''',
                                                                            ).toString(),
                                                                            width:
                                                                                116.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            alignment:
                                                                                Alignment(1.0, 1.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                dataItem.name,
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Lato',
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                child: Text(
                                                                                  dataItem.description,
                                                                                  maxLines: 4,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Lato',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: dataItem.type == TypeEvent.free
                                                                                          ? 'Gratis'
                                                                                          : valueOrDefault<String>(
                                                                                              formatNumber(
                                                                                                dataItem.precio,
                                                                                                formatType: FormatType.decimal,
                                                                                                decimalType: DecimalType.automatic,
                                                                                                currency: '\$',
                                                                                              ),
                                                                                              '0',
                                                                                            ),
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        fontWeight: FontWeight.w900,
                                                                                        fontSize: 24.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Lato',
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model: _model.navBarWithMiddleButtonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBarWithMiddleButtonWidget(),
                          ),
                        ),
                      ],
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
