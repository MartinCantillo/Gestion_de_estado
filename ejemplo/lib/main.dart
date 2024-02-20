import 'package:flutter/material.dart';
import 'package:ejemplo/Bloc/productos_bloc.dart';
import 'package:ejemplo/widget/productos_widget.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductosWidget(productosBloc: ProductosBloc()), // Pasamos una instancia de ProductosBloc al widget ProductosWidget
    );
  }
}
