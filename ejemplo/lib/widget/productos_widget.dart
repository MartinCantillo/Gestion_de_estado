import 'package:flutter/material.dart';
import 'package:ejemplo/Bloc/productos_bloc.dart'; // Importamos el archivo donde está definido el BLoC

class ProductosWidget extends StatelessWidget {
  final ProductosBloc productosBloc; // Declaración del campo productosBloc

  // Constructor que recibe un productosBloc
  const ProductosWidget({required this.productosBloc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos'),
      ),
      body: StreamBuilder<List<String>>(
        stream: productosBloc.productosStream, // Acceso al stream del BLoC pasado como argumento
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final producto = snapshot.data![index];
                return ListTile(
                  title: Text(producto),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
