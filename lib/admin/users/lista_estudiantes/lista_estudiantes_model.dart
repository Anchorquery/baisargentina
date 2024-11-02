import '/components/componentes_admin/aprobar_reserva/aprobar_reserva_widget.dart';
import '/components/negar_reserva/negar_reserva_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'lista_estudiantes_widget.dart' show ListaEstudiantesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaEstudiantesModel extends FlutterFlowModel<ListaEstudiantesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel1;
  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel2;
  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel3;
  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel4;
  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel5;
  // Model for negarReserva component.
  late NegarReservaModel negarReservaModel6;
  // Model for AprobarReserva component.
  late AprobarReservaModel aprobarReservaModel;

  @override
  void initState(BuildContext context) {
    negarReservaModel1 = createModel(context, () => NegarReservaModel());
    negarReservaModel2 = createModel(context, () => NegarReservaModel());
    negarReservaModel3 = createModel(context, () => NegarReservaModel());
    negarReservaModel4 = createModel(context, () => NegarReservaModel());
    negarReservaModel5 = createModel(context, () => NegarReservaModel());
    negarReservaModel6 = createModel(context, () => NegarReservaModel());
    aprobarReservaModel = createModel(context, () => AprobarReservaModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    negarReservaModel1.dispose();
    negarReservaModel2.dispose();
    negarReservaModel3.dispose();
    negarReservaModel4.dispose();
    negarReservaModel5.dispose();
    negarReservaModel6.dispose();
    aprobarReservaModel.dispose();
  }
}
