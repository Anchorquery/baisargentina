import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BAISArgentinaAuthUser? initialUser;
  BAISArgentinaAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BAISArgentinaAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => RootPageContext.wrap(
        appStateNotifier.loggedIn ? HomeAdminWidget() : InicioWidget(),
        errorRoute: state.uri.toString(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? HomeAdminWidget() : InicioWidget(),
          ),
        ),
        FFRoute(
          name: 'inicio',
          path: '/inicio',
          builder: (context, params) => InicioWidget(),
        ),
        FFRoute(
          name: 'registro',
          path: '/registro',
          builder: (context, params) => RegistroWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'housigns',
          path: '/housigns',
          requireAuth: true,
          builder: (context, params) => HousignsWidget(),
        ),
        FFRoute(
          name: 'userProfile',
          path: '/userProfile',
          requireAuth: true,
          builder: (context, params) => UserProfileWidget(),
        ),
        FFRoute(
          name: 'reservaexitosa',
          path: '/reservaexitosa',
          requireAuth: true,
          builder: (context, params) => ReservaexitosaWidget(),
        ),
        FFRoute(
          name: 'tranvia',
          path: '/tranvia',
          requireAuth: true,
          builder: (context, params) => TranviaWidget(),
        ),
        FFRoute(
          name: 'housign',
          path: '/housign',
          requireAuth: true,
          builder: (context, params) => HousignWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'politicasdeReembolso',
          path: '/politicasdeReembolso',
          builder: (context, params) => PoliticasdeReembolsoWidget(),
        ),
        FFRoute(
          name: 'nosotros',
          path: '/nosotros',
          builder: (context, params) => NosotrosWidget(),
        ),
        FFRoute(
          name: 'terminosycondiciones',
          path: '/terminosycondiciones',
          builder: (context, params) => TerminosycondicionesWidget(),
        ),
        FFRoute(
          name: 'create',
          path: '/create',
          requireAuth: true,
          builder: (context, params) => CreateWidget(),
        ),
        FFRoute(
          name: 'event',
          path: '/event',
          requireAuth: true,
          builder: (context, params) => EventWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'events',
          path: '/events',
          requireAuth: true,
          builder: (context, params) => EventsWidget(),
        ),
        FFRoute(
          name: 'reservas',
          path: '/reservas',
          requireAuth: true,
          builder: (context, params) => ReservasWidget(),
        ),
        FFRoute(
          name: 'scaneoExitoso',
          path: '/scaneoExitoso',
          requireAuth: true,
          builder: (context, params) => ScaneoExitosoWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'scaneoError',
          path: '/scaneoError',
          requireAuth: true,
          builder: (context, params) => ScaneoErrorWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit',
          path: '/edit',
          requireAuth: true,
          builder: (context, params) => EditWidget(),
        ),
        FFRoute(
          name: 'editEvent',
          path: '/editEvent',
          requireAuth: true,
          builder: (context, params) => EditEventWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'reservaId',
          path: '/reservaId',
          requireAuth: true,
          builder: (context, params) => ReservaIdWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'detalleReserva',
          path: '/detalleReserva',
          requireAuth: true,
          builder: (context, params) => DetalleReservaWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'FAQ',
          path: '/faq',
          builder: (context, params) => FaqWidget(),
        ),
        FFRoute(
          name: 'emailRecovery',
          path: '/emailRecovery',
          requireAuth: true,
          builder: (context, params) => EmailRecoveryWidget(),
        ),
        FFRoute(
          name: 'codigoEnviado',
          path: '/codigoEnviado',
          requireAuth: true,
          builder: (context, params) => CodigoEnviadoWidget(),
        ),
        FFRoute(
          name: 'codigoDeValidacion',
          path: '/codigoDeValidacion',
          requireAuth: true,
          builder: (context, params) => CodigoDeValidacionWidget(),
        ),
        FFRoute(
          name: 'NewPassword',
          path: '/newPassword',
          requireAuth: true,
          builder: (context, params) => NewPasswordWidget(),
        ),
        FFRoute(
          name: 'planes',
          path: '/planes',
          requireAuth: true,
          builder: (context, params) => PlanesWidget(),
        ),
        FFRoute(
          name: 'detallesDePlanBasic',
          path: '/detallesDePlanBasic',
          requireAuth: true,
          builder: (context, params) => DetallesDePlanBasicWidget(),
        ),
        FFRoute(
          name: 'servicios',
          path: '/servicios',
          requireAuth: true,
          builder: (context, params) => ServiciosWidget(),
        ),
        FFRoute(
          name: 'HomeComercio',
          path: '/homeComercio',
          requireAuth: true,
          builder: (context, params) => HomeComercioWidget(),
        ),
        FFRoute(
          name: 'Estadisticas',
          path: '/estadisticas',
          requireAuth: true,
          builder: (context, params) => EstadisticasWidget(),
        ),
        FFRoute(
          name: 'StatProfileViews',
          path: '/statProfileViews',
          requireAuth: true,
          builder: (context, params) => StatProfileViewsWidget(),
        ),
        FFRoute(
          name: 'HomeAdmin',
          path: '/homeAdmin',
          requireAuth: true,
          builder: (context, params) => HomeAdminWidget(),
        ),
        FFRoute(
          name: 'EstablecerContrasena',
          path: '/establecerContrasena',
          requireAuth: true,
          builder: (context, params) => EstablecerContrasenaWidget(),
        ),
        FFRoute(
          name: 'ReservasAdmin',
          path: '/reservasAdmin',
          requireAuth: true,
          builder: (context, params) => ReservasAdminWidget(),
        ),
        FFRoute(
          name: 'serviciosCreados',
          path: '/serviciosCreados',
          requireAuth: true,
          builder: (context, params) => ServiciosCreadosWidget(),
        ),
        FFRoute(
          name: 'servicio',
          path: '/servicio',
          requireAuth: true,
          builder: (context, params) => ServicioWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'CrearServicio',
          path: '/crearServicio',
          requireAuth: true,
          builder: (context, params) => CrearServicioWidget(),
        ),
        FFRoute(
          name: 'CrearCategoria',
          path: '/crearCategoria',
          requireAuth: true,
          builder: (context, params) => CrearCategoriaWidget(),
        ),
        FFRoute(
          name: 'CrearDecuento',
          path: '/crearDecuento',
          requireAuth: true,
          builder: (context, params) => CrearDecuentoWidget(),
        ),
        FFRoute(
          name: 'CrearCategoriaDescuento',
          path: '/crearCategoriaDescuento',
          requireAuth: true,
          builder: (context, params) => CrearCategoriaDescuentoWidget(),
        ),
        FFRoute(
          name: 'transacciones',
          path: '/transacciones',
          requireAuth: true,
          builder: (context, params) => TransaccionesWidget(),
        ),
        FFRoute(
          name: 'Descuentos',
          path: '/descuentos',
          requireAuth: true,
          builder: (context, params) => DescuentosWidget(),
        ),
        FFRoute(
          name: 'servicesByCategory',
          path: '/servicesByCategory',
          requireAuth: true,
          builder: (context, params) => ServicesByCategoryWidget(
            idCategory: params.getParam(
              'idCategory',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'editarServicio',
          path: '/editarServicio',
          requireAuth: true,
          builder: (context, params) => EditarServicioWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'EditarCategoriaServicio',
          path: '/editarCategoriaServicio',
          requireAuth: true,
          builder: (context, params) => EditarCategoriaServicioWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'editarDecuento',
          path: '/editarDecuento',
          requireAuth: true,
          builder: (context, params) => EditarDecuentoWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'editarCategoriaDescuento',
          path: '/editarCategoriaDescuento',
          requireAuth: true,
          builder: (context, params) => EditarCategoriaDescuentoWidget(
            uuid: params.getParam(
              'uuid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ComercioProfile',
          path: '/comercioProfile',
          requireAuth: true,
          builder: (context, params) => ComercioProfileWidget(),
        ),
        FFRoute(
          name: 'detallesPlan',
          path: '/detallesPlan',
          requireAuth: true,
          builder: (context, params) => DetallesPlanWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'paymenSuccces',
          path: '/paymenSuccces',
          requireAuth: true,
          builder: (context, params) => PaymenSucccesWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
            mount: params.getParam(
              'mount',
              ParamType.double,
            ),
            lastForNumber: params.getParam(
              'lastForNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'detalleMiPlan',
          path: '/detalleMiPlan',
          requireAuth: true,
          builder: (context, params) => DetalleMiPlanWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'CreateHousing',
          path: '/createHousing',
          requireAuth: true,
          builder: (context, params) => CreateHousingWidget(),
        ),
        FFRoute(
          name: 'CrearFAQ',
          path: '/crearFAQ',
          requireAuth: true,
          builder: (context, params) => CrearFAQWidget(),
        ),
        FFRoute(
          name: 'CrearComercio',
          path: '/crearComercio',
          requireAuth: true,
          builder: (context, params) => CrearComercioWidget(),
        ),
        FFRoute(
          name: 'StatLocalViews',
          path: '/statLocalViews',
          requireAuth: true,
          builder: (context, params) => StatLocalViewsWidget(),
        ),
        FFRoute(
          name: 'StatEventosComercio',
          path: '/statEventosComercio',
          requireAuth: true,
          builder: (context, params) => StatEventosComercioWidget(),
        ),
        FFRoute(
          name: 'editarPerfilComercio',
          path: '/editarPerfilComercio',
          requireAuth: true,
          builder: (context, params) => EditarPerfilComercioWidget(
            data: params.getParam(
              'data',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CommercePerfilStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'editarPerfilComercioCopy',
          path: '/editarPerfilComercioCopy',
          requireAuth: true,
          builder: (context, params) => EditarPerfilComercioCopyWidget(
            data: params.getParam(
              'data',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CommercePerfilStruct.fromSerializableMap,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/inicio';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/INICIO.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
