import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/chat/component_create_ticket/component_create_ticket_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listado_chats_model.dart';
export 'listado_chats_model.dart';

class ListadoChatsWidget extends StatefulWidget {
  const ListadoChatsWidget({super.key});

  @override
  State<ListadoChatsWidget> createState() => _ListadoChatsWidgetState();
}

class _ListadoChatsWidgetState extends State<ListadoChatsWidget> {
  late ListadoChatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListadoChatsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().listChats = [];
      safeSetState(() {});
      _model.apiCargarChats = await ChatGroup.listarChatsCall.call(
        token: currentAuthenticationToken,
      );

      if ((_model.apiCargarChats?.succeeded ?? true)) {
        FFAppState().listChats = (getJsonField(
          (_model.apiCargarChats?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
                .toList()
                .map<ChatStruct?>(ChatStruct.maybeFromMap)
                .toList() as Iterable<ChatStruct?>)
            .withoutNulls
            .toList()
            .cast<ChatStruct>();
        safeSetState(() {});
        _model.loading = !(_model.loading ?? true);
        _model.pagination = PaginationStruct.maybeFromMap(getJsonField(
          (_model.apiCargarChats?.jsonBody ?? ''),
          r'''$.pagination''',
        ));
        safeSetState(() {});
        await actions.listenToUpdateChatAction();
        return;
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title:
                  Text('Ha ocurrido un error,No fue posible cargar los chats'),
              content: Text(getJsonField(
                (_model.apiCargarChats?.jsonBody ?? ''),
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
        context.safePop();
        return;
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: Visibility(
          visible: currentUserData?.role != 1,
          child: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: FlutterFlowTheme.of(context).secondary,
                isDismissible: false,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: ComponentCreateTicketWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (FFAppState().user.role == 1) {
                      context.pushNamed('HomeAdmin');

                      return;
                    } else {
                      context.pushNamed('MiPerfilEstudiante');

                      return;
                    }
                  },
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Mensajes a soporte',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Lato',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (currentUserData?.role == 1)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Aqui se muestran los estudiantes que han escrito para resolver inconvenientes o dudas.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Lato',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 16.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onFieldSubmitted: (_) async {
                            var _shouldSetState = false;
                            _model.apiCargarChatsPorNombre =
                                await ChatGroup.listarChatsCall.call(
                              token: currentAuthenticationToken,
                              q: _model.textController.text,
                              stateChat: _model.estadoChatValue,
                            );

                            _shouldSetState = true;
                            if ((_model.apiCargarChatsPorNombre?.succeeded ??
                                true)) {
                              FFAppState().listChats = (getJsonField(
                                (_model.apiCargarChatsPorNombre?.jsonBody ??
                                    ''),
                                r'''$.data''',
                                true,
                              )!
                                      .toList()
                                      .map<ChatStruct?>(ChatStruct.maybeFromMap)
                                      .toList() as Iterable<ChatStruct?>)
                                  .withoutNulls
                                  .toList()
                                  .cast<ChatStruct>();
                              safeSetState(() {});
                              _model.loading = !(_model.loading ?? true);
                              _model.pagination =
                                  PaginationStruct.maybeFromMap(getJsonField(
                                (_model.apiCargarChatsPorNombre?.jsonBody ??
                                    ''),
                                r'''$.pagination''',
                              ));
                              safeSetState(() {});
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text(
                                        'Ha ocurrido un error,No fue posible cargar los chats'),
                                    content: Text(getJsonField(
                                      (_model.apiCargarChatsPorNombre
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.error''',
                                    ).toString()),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
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
                                color: FlutterFlowTheme.of(context).tertiary,
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          'Estado de tickets',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.estadoChatValueController ??=
                                  FormFieldController<String>(
                                _model.estadoChatValue ??= 'todos',
                              ),
                              options: List<String>.from([
                                'todos',
                                'pendientes',
                                'resueltos',
                                'abiertos'
                              ]),
                              optionLabels: [
                                'Todos',
                                'Pendientes',
                                'Resueltos',
                                'Recien Creados'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.estadoChatValue = val);
                                var _shouldSetState = false;
                                _model.apiCargarChatsPorEstado =
                                    await ChatGroup.listarChatsCall.call(
                                  stateChat: _model.estadoChatValue,
                                  q: _model.textController.text,
                                );

                                _shouldSetState = true;
                                if ((_model
                                        .apiCargarChatsPorEstado?.succeeded ??
                                    true)) {
                                  FFAppState().listChats = (getJsonField(
                                    (_model.apiCargarChatsPorEstado?.jsonBody ??
                                        ''),
                                    r'''$.data''',
                                    true,
                                  )!
                                          .toList()
                                          .map<ChatStruct?>(
                                              ChatStruct.maybeFromMap)
                                          .toList() as Iterable<ChatStruct?>)
                                      .withoutNulls
                                      .toList()
                                      .cast<ChatStruct>();
                                  safeSetState(() {});
                                  _model.loading = !(_model.loading ?? true);
                                  _model.pagination =
                                      PaginationStruct.maybeFromMap(
                                          getJsonField(
                                    (_model.apiCargarChatsPorEstado?.jsonBody ??
                                        ''),
                                    r'''$.pagination''',
                                  ));
                                  safeSetState(() {});
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(
                                            'Ha ocurrido un error,No fue posible cargar los chats'),
                                        content: Text(getJsonField(
                                          (_model.apiCargarChatsPorEstado
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
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                              width: MediaQuery.sizeOf(context).width * 0.75,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Estado de ticket',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderWidth: 0.0,
                              borderRadius: 30.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            if ((_model.textController.text != null &&
                                    _model.textController.text != '') ||
                                (_model.estadoChatValue != 'todos'))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var _shouldSetState = false;
                                  safeSetState(() {
                                    _model.textController?.clear();
                                  });
                                  safeSetState(() {
                                    _model.estadoChatValueController?.value =
                                        'todos';
                                  });
                                  _model.apiCargarChatsClean =
                                      await ChatGroup.listarChatsCall.call(
                                    token: currentAuthenticationToken,
                                  );

                                  _shouldSetState = true;
                                  if ((_model
                                          .apiCargarChatsPorNombre?.succeeded ??
                                      true)) {
                                    FFAppState().listChats = (getJsonField(
                                      (_model.apiCargarChatsClean?.jsonBody ??
                                          ''),
                                      r'''$.data''',
                                      true,
                                    )!
                                            .toList()
                                            .map<ChatStruct?>(
                                                ChatStruct.maybeFromMap)
                                            .toList() as Iterable<ChatStruct?>)
                                        .withoutNulls
                                        .toList()
                                        .cast<ChatStruct>();
                                    safeSetState(() {});
                                    _model.loading = !(_model.loading ?? true);
                                    _model.pagination =
                                        PaginationStruct.maybeFromMap(
                                            getJsonField(
                                      (_model.apiCargarChatsClean?.jsonBody ??
                                          ''),
                                      r'''$.pagination''',
                                    ));
                                    safeSetState(() {});
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text(
                                              'Ha ocurrido un error,No fue posible cargar los chats'),
                                          content: Text(getJsonField(
                                            (_model.apiCargarChatsPorNombre
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
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.eraser,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (!_model.loading!)
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.65,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                    ),
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final data = FFAppState().listChats.toList();

                          return RefreshIndicator(
                            color: FlutterFlowTheme.of(context).tertiary,
                            onRefresh: () async {
                              _model.loading = true;
                              safeSetState(() {});
                              _model.apiResultu3gCopy =
                                  await ChatGroup.listarChatsCall.call(
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultu3gCopy?.succeeded ??
                                  true)) {
                                _model.pagination =
                                    PaginationStruct.maybeFromMap(getJsonField(
                                  (_model.apiResultu3gCopy?.jsonBody ?? ''),
                                  r'''$.pagination''',
                                ));
                                _model.loading = !(_model.loading ?? true);
                                safeSetState(() {});
                              }
                            },
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:
                                    List.generate(data.length, (dataIndex) {
                                  final dataItem = data[dataIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        if (currentUserData?.role == 1) {
                                          _model.apiResult36m = await ChatGroup
                                              .asignarUsuarioAChatCall
                                              .call(
                                            token: currentAuthenticationToken,
                                            uuid: dataItem.uuid,
                                          );

                                          _shouldSetState = true;
                                          if ((_model.apiResult36m?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                              'chatId',
                                              queryParameters: {
                                                'chatRef': serializeParam(
                                                  ChatStruct.maybeFromMap(
                                                      getJsonField(
                                                    (_model.apiResult36m
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  )),
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                            );

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          } else {
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }
                                        } else {
                                          context.pushNamed(
                                            'chatId',
                                            queryParameters: {
                                              'chatRef': serializeParam(
                                                dataItem,
                                                ParamType.DataStruct,
                                              ),
                                            }.withoutNulls,
                                          );

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 0.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 44.0,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            imageUrl: dataItem
                                                                .user.avatar,
                                                            width: 44.0,
                                                            height: 44.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      if (currentAuthenticationToken ==
                                                          '1')
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 1.0),
                                                          child: Container(
                                                            width: 10.0,
                                                            height: 10.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: dataItem.user
                                                                          .isOnline ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .success
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border:
                                                                  Border.all(
                                                                color: dataItem
                                                                            .user
                                                                            .isOnline ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 1.0),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              dataItem.name,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            dataItem
                                                                .lastMessage,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                  "relative",
                                                                  functions.timestampToDateTimeSeconds(
                                                                      dataItem
                                                                          .lastMessageTime),
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ],
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
                                  );
                                })
                                        .addToStart(SizedBox(height: 30.0))
                                        .addToEnd(SizedBox(height: 30.0)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ].addToEnd(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
