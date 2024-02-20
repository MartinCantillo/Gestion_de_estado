# Example Usage of Rx and BLoC in Flutter

![Flutter Logo](https://flutter.dev/assets/flutter-lockup-4cb0ee072ab312e59784b518c3af61da70f3c26ec8d92c8b1df3456e1c6c63cb.png)

This example project demonstrates the use of Rx (via the rxdart library) and the BLoC (Business Logic Component) pattern in Flutter to manage reactive data flows and business logic in a product list application.

## Project Structure

The project consists of three main files:

1. **main.dart**: This file contains the `main()` function that initializes the application and the `MyApp` main widget.

2. **productos_widget.dart**: This file contains the `ProductosWidget` widget, which is the user interface for displaying the product list. This widget consumes data provided by the BLoC and uses a `StreamBuilder` to update the user interface reactively.

3. **productos_bloc.dart**: Here is the definition of the `ProductosBloc` BLoC, which handles the business logic related to product management. It uses Rx to create a stream of products and provides methods to load simulated products and clean up resources when they are no longer needed.

## Additional Notes

This project serves as a basic example of how to utilize Rx and the BLoC pattern in Flutter to manage reactive data flows and business logic. Additional functionalities and enhancements can be added as per project requirements.
