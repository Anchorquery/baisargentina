import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'descuentos_model.dart';
export 'descuentos_model.dart';

class DescuentosWidget extends StatefulWidget {
  const DescuentosWidget({super.key});

  @override
  State<DescuentosWidget> createState() => _DescuentosWidgetState();
}

class _DescuentosWidgetState extends State<DescuentosWidget>
    with TickerProviderStateMixin {
  late DescuentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescuentosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiGetDescuentos = await DiscoinGroup.findDescuentosCall.call(
            token: currentAuthenticationToken,
          );

          if (!(_model.apiGetDescuentos?.succeeded ?? true)) {
            return;
          }
        }),
        Future(() async {
          _model.apiResultdgg = await DiscoinGroup.cratedCall.call();

          if (!(_model.apiResultdgg?.succeeded ?? true)) {
            return;
          }
        }),
      ]);
      _model.data = (getJsonField(
        (_model.apiGetDescuentos?.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
              .toList()
              .map<DiscountsStruct?>(DiscountsStruct.maybeFromMap)
              .toList() as Iterable<DiscountsStruct?>)
          .withoutNulls
          .toList()
          .cast<DiscountsStruct>();
      _model.categorys = (getJsonField(
        (_model.apiResultdgg?.jsonBody ?? ''),
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
      _model.pagination = (getJsonField(
        (_model.apiGetDescuentos?.jsonBody ?? ''),
        r'''$.meta.pagination''',
        true,
      )!
              .toList()
              .map<PaginationStruct?>(PaginationStruct.maybeFromMap)
              .toList() as Iterable<PaginationStruct?>)
          .withoutNulls
          .toList()
          .cast<PaginationStruct>();
      safeSetState(() {});
    });

    _model.buscadorTextController ??= TextEditingController();
    _model.buscadorFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
      'rowOnPageLoadAnimation1': AnimationInfo(
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
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
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
        floatingActionButton: Visibility(
          visible: currentUserData?.role == 1,
          child: Align(
            alignment: AlignmentDirectional(1.0, 0.8),
            child: FloatingActionButton(
              onPressed: () async {
                context.pushNamed('CrearDecuento');
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Builder(
              builder: (context) {
                if (_model.loading == false) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/REGISTRO.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 70.0, 25.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Text(
                                      'DESCUENTOS',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final categoriasDescuentos =
                                            _model.categorys.toList();

                                        return SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: List.generate(
                                                categoriasDescuentos.length,
                                                (categoriasDescuentosIndex) {
                                              final categoriasDescuentosItem =
                                                  categoriasDescuentos[
                                                      categoriasDescuentosIndex];
                                              return Text(
                                                categoriasDescuentosItem.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              );
                                            }).divide(SizedBox(width: 10.0)),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'rowOnPageLoadAnimation1']!);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      child: TextFormField(
                                        controller:
                                            _model.buscadorTextController,
                                        focusNode: _model.buscadorFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.buscadorTextController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            _model.apiGetDiscoins =
                                                await DiscoinGroup
                                                    .findDescuentosCall
                                                    .call(
                                              token: currentAuthenticationToken,
                                            );

                                            if ((_model.apiGetDiscoins
                                                    ?.succeeded ??
                                                true)) {
                                              _model.data = (getJsonField(
                                                (_model.apiGetDiscoins
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.data''',
                                                true,
                                              )!
                                                          .toList()
                                                          .map<DiscountsStruct?>(
                                                              DiscountsStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          DiscountsStruct?>)
                                                  .withoutNulls
                                                  .toList()
                                                  .cast<DiscountsStruct>();
                                              safeSetState(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                        ),
                                        autofocus: false,
                                        textInputAction: TextInputAction.search,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Buscar comercio',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    color: Color(0x68000000),
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          prefixIcon: Icon(
                                            Icons.search_rounded,
                                            color: Color(0x68000000),
                                            size: 18.0,
                                          ),
                                          suffixIcon: _model
                                                  .buscadorTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .buscadorTextController
                                                        ?.clear();
                                                    _model.apiGetDiscoins =
                                                        await DiscoinGroup
                                                            .findDescuentosCall
                                                            .call(
                                                      token:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.apiGetDiscoins
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model
                                                          .data = (getJsonField(
                                                        (_model.apiGetDiscoins
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                        true,
                                                      )!
                                                                  .toList()
                                                                  .map<DiscountsStruct?>(
                                                                      DiscountsStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  DiscountsStruct?>)
                                                          .withoutNulls
                                                          .toList()
                                                          .cast<
                                                              DiscountsStruct>();
                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0x68000000),
                                                    size: 15.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .buscadorTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 70.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final descuentos = _model.data.toList();

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: descuentos.length,
                                          itemBuilder:
                                              (context, descuentosIndex) {
                                            final descuentosItem =
                                                descuentos[descuentosIndex];
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF7F8FA),
                                                elevation: 0.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          descuentosItem.image,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.35,
                                                          height: 150.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Text(
                                                                descuentosItem
                                                                    .commerce,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              descuentosItem
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                descuentosItem
                                                                    .description,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '-',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          fontSize:
                                                                              24.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w900,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: descuentosItem
                                                                        .porceint
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          fontSize:
                                                                              24.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w900,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '%',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          fontSize:
                                                                              23.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ).animateOnPageLoad(animationsMap[
                                                    'rowOnPageLoadAnimation2']!),
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.navBarWithMiddleButtonModel1,
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
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navBarWithMiddleButtonModel2,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWithMiddleButtonWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
