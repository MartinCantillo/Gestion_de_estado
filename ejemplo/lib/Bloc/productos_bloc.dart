import 'dart:async';
import 'package:rxdart/rxdart.dart';

//logica de negocio
class ProductosBloc {
  
  //Se crea el stream como variable,  flujo de datos reactivos
  final _productosController = BehaviorSubject<List<String>>();
  //get del Stream
  Stream<List<String>> get productosStream => _productosController.stream;

  ProductosBloc() {
    fetchProductos();
  }

  Future<void> fetchProductos() async {
    final List<String> productos = [];
    for (String producto in Productos) {
      await Future.delayed(Duration(seconds: 2));
      productos.add(producto);
      //Sink para agregar datos al stream
      _productosController.sink.add(productos.toList());
    }
  }

  void dispose() {
    _productosController.close();
  }
}

const Productos = [
  'PC',
  'HP',
  'Lenovo',
  'Dell',
  'Apple',
  'Samsung',
  'Acer',
  'Asus',
  'Microsoft',
  'Sony',
  'Toshiba',
  'IBM',
  'Compaq',
  'Alienware',
  'Gateway',
  'Chromebook',
  'Surface',
  'ThinkPad',
  'VivoBook',
  'MacBook',
  'XPS',
  'Inspiron',
  'Latitude',
  'Precision',
  'ProBook',
  'EliteBook',
  'Pavilion',
  'Envy',
  'Spectre',
  'Omen',
  'Surface Pro',
  'Surface Book',
  'Surface Laptop',
  'Galaxy Book',
  'Notebook 9',
  'Chromebook Plus',
  'Swift',
  'Nitro',
  'Predator',
  'ZenBook',
  'Surface Go',
  'Surface Studio',
  'Surface Hub',
  'Mac Mini',
  'Mac Pro',
  'MacBook Air',
  'MacBook Pro',
  'iMac',
  'Mac Pro',
  'Mac Mini',
  'Magic Keyboard',
  'Magic Mouse',
  'Magic Trackpad',
  'iMac Pro',
  'Mac Pro',
  'Mac Mini',
  'Magic Keyboard',
  'Magic Mouse',
  'Magic Trackpad',
  'Apple Pencil',
  'Mac Pro',
  'Mac Mini',
  'Magic Keyboard',
  'Magic Mouse',
  'Magic Trackpad',
  'Apple Pencil',
  'iPad',
  'iPad Mini',
  'iPad Air',
  'iPad Pro',
  'iPadOS',
  'iOS',
  'macOS',
  'watchOS',
  'tvOS',
  'Safari',
  'iCloud',
  'iTunes',
  'App Store',
  'Mac App Store',
  'iBooks',
  'Apple Music',
  'Apple TV+',
  'Apple Arcade',
  'Apple Card',
  'Apple Pay',
  'Apple Watch',
  'Apple Watch Series 1',
  'Apple Watch Series 2',
  'Apple Watch Series 3',
  'Apple Watch Series 4',
  'Apple Watch Series 5',
  'Apple Watch Series 6',
  'Apple Watch SE',
  'iPhone',
  'iPhone 3G',
  'iPhone 3GS',
  'iPhone 4',
  'iPhone 4S',
  'iPhone 5',
  'iPhone 5c',
  'iPhone 5s',
  'iPhone 6',
  'iPhone 6 Plus',
  'iPhone 6s',
  'iPhone 6s Plus',
  'iPhone SE',
  'iPhone 7',
  'iPhone 7 Plus',
  'iPhone 8',
  'iPhone 8 Plus',
  'iPhone X',
  'iPhone XR',
  'iPhone XS',
  'iPhone XS Max',
  'iPhone 11',
  'iPhone 11 Pro',
  'iPhone 11 Pro Max',
  'iPhone SE (2nd generation)',
  'iPhone 12 mini',
  'iPhone 12',
  'iPhone 12 Pro',
  'iPhone 12 Pro Max',
];

