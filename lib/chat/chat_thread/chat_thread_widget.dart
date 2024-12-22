import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'chat_thread_model.dart';
export 'chat_thread_model.dart';

class ChatThreadWidget extends StatefulWidget {
  const ChatThreadWidget({
    super.key,
    required this.chatMessagesRef,
  });

  final ChatMessageStruct? chatMessagesRef;

  @override
  State<ChatThreadWidget> createState() => _ChatThreadWidgetState();
}

class _ChatThreadWidgetState extends State<ChatThreadWidget> {
  late ChatThreadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(
          builder: (context) {
            if (widget!.chatMessagesRef?.userId != currentUserData?.id) {
              return Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 8.0, 16.0),
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 200),
                                    fadeOutDuration:
                                        Duration(milliseconds: 200),
                                    imageUrl:
                                        widget!.chatMessagesRef!.user.avatar,
                                    width: 44.0,
                                    height: 44.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SelectionArea(
                                          child: AutoSizeText(
                                        valueOrDefault<String>(
                                          widget!.chatMessagesRef?.user?.name,
                                          'name',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                            ),
                                      )),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: SelectionArea(
                                        child: AutoSizeText(
                                      valueOrDefault<String>(
                                        widget!.chatMessagesRef?.text,
                                        'text',
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            letterSpacing: 0.0,
                                            lineHeight: 1.5,
                                          ),
                                    )),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (widget!.chatMessagesRef?.images !=
                                              null &&
                                          (widget!.chatMessagesRef?.images)!
                                              .isNotEmpty) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (widget!.chatMessagesRef?.images
                                                    ?.length ==
                                                1)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 4.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        child:
                                                            FlutterFlowExpandedImageView(
                                                          image: OctoImage(
                                                            placeholderBuilder:
                                                                (_) => SizedBox
                                                                    .expand(
                                                              child: Image(
                                                                image: BlurHashImage(widget!
                                                                    .chatMessagesRef!
                                                                    .images
                                                                    .firstOrNull!
                                                                    .blurhash),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            image: NetworkImage(
                                                              widget!
                                                                  .chatMessagesRef!
                                                                  .images
                                                                  .firstOrNull!
                                                                  .url,
                                                            ),
                                                            fit: BoxFit.contain,
                                                            alignment:
                                                                Alignment(
                                                                    1.0, 0.0),
                                                          ),
                                                          allowRotation: true,
                                                          tag: widget!
                                                              .chatMessagesRef!
                                                              .images
                                                              .firstOrNull!
                                                              .url,
                                                          useHeroAnimation:
                                                              true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Hero(
                                                    tag: widget!
                                                        .chatMessagesRef!
                                                        .images
                                                        .firstOrNull!
                                                        .url,
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: OctoImage(
                                                        placeholderBuilder:
                                                            (_) =>
                                                                SizedBox.expand(
                                                          child: Image(
                                                            image: BlurHashImage(
                                                                widget!
                                                                    .chatMessagesRef!
                                                                    .images
                                                                    .firstOrNull!
                                                                    .blurhash),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        image: NetworkImage(
                                                          widget!
                                                              .chatMessagesRef!
                                                              .images
                                                              .firstOrNull!
                                                              .url,
                                                        ),
                                                        width: 300.0,
                                                        height: 250.0,
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment(1.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (widget!.chatMessagesRef!.images
                                                    .length >
                                                1)
                                              Builder(
                                                builder: (context) {
                                                  final images = (widget!
                                                              .chatMessagesRef
                                                              ?.images
                                                              ?.toList() ??
                                                          [])
                                                      .take(5)
                                                      .toList();

                                                  return Container(
                                                    width: double.infinity,
                                                    child:
                                                        CarouselSlider.builder(
                                                      itemCount: images.length,
                                                      itemBuilder: (context,
                                                          imagesIndex, _) {
                                                        final imagesItem =
                                                            images[imagesIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image:
                                                                      OctoImage(
                                                                    placeholderBuilder: (_) =>
                                                                        SizedBox
                                                                            .expand(
                                                                      child:
                                                                          Image(
                                                                        image: BlurHashImage(
                                                                            imagesItem.blurhash),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    image:
                                                                        NetworkImage(
                                                                      imagesItem
                                                                          .url,
                                                                    ),
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                  allowRotation:
                                                                      true,
                                                                  tag:
                                                                      imagesItem
                                                                          .url,
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: imagesItem.url,
                                                            transitionOnUserGestures:
                                                                true,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: OctoImage(
                                                                placeholderBuilder:
                                                                    (_) => SizedBox
                                                                        .expand(
                                                                  child: Image(
                                                                    image: BlurHashImage(
                                                                        imagesItem
                                                                            .blurhash),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                image:
                                                                    NetworkImage(
                                                                  imagesItem
                                                                      .url,
                                                                ),
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    3.0,
                                                                height: 250.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      carouselController: _model
                                                              .carouselController1 ??=
                                                          CarouselSliderController(),
                                                      options: CarouselOptions(
                                                        initialPage: max(
                                                            0,
                                                            min(
                                                                1,
                                                                images.length -
                                                                    1)),
                                                        viewportFraction: 0.5,
                                                        disableCenter: true,
                                                        enlargeCenterPage: true,
                                                        enlargeFactor: 0.25,
                                                        enableInfiniteScroll:
                                                            false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        autoPlay: false,
                                                        onPageChanged: (index,
                                                                _) =>
                                                            _model.carouselCurrentIndex1 =
                                                                index,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                          ],
                                        );
                                      } else {
                                        return Container(
                                          width: 0.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            dateTimeFormat(
                                              "relative",
                                              functions
                                                  .timestampToDateTimeSeconds(
                                                      widget!.chatMessagesRef!
                                                          .timestamp),
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Lato',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
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
              );
            } else {
              return Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    constraints: BoxConstraints(
                      maxWidth: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFD9FDD3),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: SelectionArea(
                                        child: Text(
                                      valueOrDefault<String>(
                                        widget!.chatMessagesRef?.text,
                                        'text',
                                      ),
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (widget!.chatMessagesRef?.images !=
                                              null &&
                                          (widget!.chatMessagesRef?.images)!
                                              .isNotEmpty) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (widget!.chatMessagesRef?.images
                                                    ?.length ==
                                                1)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 4.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        child:
                                                            FlutterFlowExpandedImageView(
                                                          image: OctoImage(
                                                            placeholderBuilder:
                                                                (_) => SizedBox
                                                                    .expand(
                                                              child: Image(
                                                                image: BlurHashImage(widget!
                                                                    .chatMessagesRef!
                                                                    .images
                                                                    .firstOrNull!
                                                                    .blurhash),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            image: NetworkImage(
                                                              widget!
                                                                  .chatMessagesRef!
                                                                  .images
                                                                  .firstOrNull!
                                                                  .url,
                                                            ),
                                                            fit: BoxFit.contain,
                                                            alignment:
                                                                Alignment(
                                                                    1.0, 0.0),
                                                          ),
                                                          allowRotation: true,
                                                          tag: widget!
                                                              .chatMessagesRef!
                                                              .images
                                                              .firstOrNull!
                                                              .url,
                                                          useHeroAnimation:
                                                              true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Hero(
                                                    tag: widget!
                                                        .chatMessagesRef!
                                                        .images
                                                        .firstOrNull!
                                                        .url,
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: OctoImage(
                                                        placeholderBuilder:
                                                            (_) =>
                                                                SizedBox.expand(
                                                          child: Image(
                                                            image: BlurHashImage(
                                                                widget!
                                                                    .chatMessagesRef!
                                                                    .images
                                                                    .firstOrNull!
                                                                    .blurhash),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        image: NetworkImage(
                                                          widget!
                                                              .chatMessagesRef!
                                                              .images
                                                              .firstOrNull!
                                                              .url,
                                                        ),
                                                        width: 300.0,
                                                        height: 250.0,
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment(1.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (widget!.chatMessagesRef!.images
                                                    .length >
                                                1)
                                              Builder(
                                                builder: (context) {
                                                  final images = (widget!
                                                              .chatMessagesRef
                                                              ?.images
                                                              ?.toList() ??
                                                          [])
                                                      .take(5)
                                                      .toList();

                                                  return Container(
                                                    width: double.infinity,
                                                    child:
                                                        CarouselSlider.builder(
                                                      itemCount: images.length,
                                                      itemBuilder: (context,
                                                          imagesIndex, _) {
                                                        final imagesItem =
                                                            images[imagesIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image:
                                                                      OctoImage(
                                                                    placeholderBuilder: (_) =>
                                                                        SizedBox
                                                                            .expand(
                                                                      child:
                                                                          Image(
                                                                        image: BlurHashImage(
                                                                            imagesItem.blurhash),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    image:
                                                                        NetworkImage(
                                                                      imagesItem
                                                                          .url,
                                                                    ),
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                  allowRotation:
                                                                      true,
                                                                  tag:
                                                                      imagesItem
                                                                          .url,
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: imagesItem.url,
                                                            transitionOnUserGestures:
                                                                true,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: OctoImage(
                                                                placeholderBuilder:
                                                                    (_) => SizedBox
                                                                        .expand(
                                                                  child: Image(
                                                                    image: BlurHashImage(
                                                                        imagesItem
                                                                            .blurhash),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                image:
                                                                    NetworkImage(
                                                                  imagesItem
                                                                      .url,
                                                                ),
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    3.0,
                                                                height: 250.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      carouselController: _model
                                                              .carouselController2 ??=
                                                          CarouselSliderController(),
                                                      options: CarouselOptions(
                                                        initialPage: max(
                                                            0,
                                                            min(
                                                                1,
                                                                images.length -
                                                                    1)),
                                                        viewportFraction: 0.5,
                                                        disableCenter: true,
                                                        enlargeCenterPage: true,
                                                        enlargeFactor: 0.25,
                                                        enableInfiniteScroll:
                                                            false,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        autoPlay: false,
                                                        onPageChanged: (index,
                                                                _) =>
                                                            _model.carouselCurrentIndex2 =
                                                                index,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                          ],
                                        );
                                      } else if (widget!
                                              .chatMessagesRef?.loading ??
                                          false) {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/1495.gif',
                                                    width: 20.0,
                                                    height: 20.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Text(
                                                  'Subiendo archivos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          width: 0.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                "relative",
                                                functions
                                                    .timestampToDateTimeSeconds(
                                                        widget!.chatMessagesRef!
                                                            .timestamp),
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
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
              );
            }
          },
        ),
      ],
    );
  }
}
