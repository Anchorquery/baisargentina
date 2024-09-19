import '/components/componentes_admin/aprobar_reserva/aprobar_reserva_widget.dart';
import '/components/negar_reserva/negar_reserva_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reservas_admin_widget.dart' show ReservasAdminWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReservasAdminModel extends FlutterFlowModel<ReservasAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel;
  // Model for AprobarReserva component.
  late AprobarReservaModel aprobarReservaModel;

  @override
  void initState(BuildContext context) {
    negarReservaModel = createModel(context, () => NegarReservaModel());
    aprobarReservaModel = createModel(context, () => AprobarReservaModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    negarReservaModel.dispose();
    aprobarReservaModel.dispose();
  }
}
