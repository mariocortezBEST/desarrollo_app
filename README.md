# Desarrollo de app para dispositivos móviles
Recursos de teoría y práctica de la materia Desarrollo de Aplicaciones para Dispositivos Móviles.

## Introducción a Flutter y Dart

### ¿Qué es Flutter?
Flutter es un framework de código abierto creado por Google para desarrollar aplicaciones multiplataforma. Esto significa que permite crear aplicaciones que funcionan tanto en Android como en iOS (y también en web y escritorio) utilizando un único código base.
Su gran ventaja es el rendimiento casi nativo gracias a que utiliza un motor gráfico propio y compila directamente a código nativo. Además, cuenta con un enfoque basado en widgets que facilita la personalización de interfaces y garantiza una apariencia consistente en todas las plataformas.

> Toda la información técnica a continuación está basada en la Documentación oficial de Flutter: [https://docs.flutter.dev/](https://docs.flutter.dev/)

## ¿Qué es Dart y por qué Flutter lo utiliza?
Dart es un lenguaje de programación de código abierto desarrollado por Google. Es un lenguaje orientado a objetos, de tipado estático[^1] y con una sintaxis similar a C. Aunque Dart se puede utilizar para crear aplicaciones web y de servidor, se ha vuelto especialmente popular gracias a su uso en el framework Flutter.

[^1]: Aclaración: Un lenguaje de tipado estático es aquel en el que la verificación de tipos se realiza en tiempo de compilación, lo que significa que los tipos de las variables se declaran antes de su uso y no pueden cambiar durante la ejecución del programa.

### Flutter utiliza Dart por varias razones clave:

#### Rendimiento:
Dart se puede compilar en código nativo, lo que permite que las aplicaciones Flutter tengan un rendimiento muy rápido y fluido, comparable al de las aplicaciones nativas.

Su compilación JIT (Just-In-Time) durante el desarrollo permite una "recarga en caliente" (hot reload) muy rápida, lo que significa que los desarrolladores pueden ver los cambios en el código casi instantáneamente, sin necesidad de reiniciar la aplicación.

#### Productividad:
Dart tiene una sintaxis clara y concisa, lo que facilita su aprendizaje y escritura.

Su tipado estático ayuda a detectar errores en tiempo de compilación, lo que reduce la cantidad de errores en tiempo de ejecución.

El lenguaje ofrece características modernas que facilitan la creación de interfaces de usuario complejas.

#### Idoneidad para Flutter:
Dart está diseñado para ser optimizado para la creación de interfaces de usuario.

La arquitectura de Dart se alinea bien con la arquitectura de widgets de Flutter.

Tiene un buen manejo de los Widgets, que son los elementos que se usan en flutter para crear interfaces de usuario.

## ¿Qué es un widget?

En Flutter, un widget es el bloque básico de construcción de la interfaz de usuario. Todo en Flutter, desde botones y textos hasta diseños más complejos, son widgets. Pensemos en ellos como "piezas de Lego" que se pueden juntar para crear una aplicación.

Un widget común es `Text`, que simplemente muestra texto en la pantalla. Por ejemplo:

```dart
    import 'package:flutter/material.dart';
    
    void main() {
    runApp( const MyApp() );
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Hola Flutter')),
            body: Center(
            child: Text('¡Hola mundo!'),
            ),
        ),
        );
    }
    }
```
Se pueden combinar widgets para crear algo más complejo. En el ejemplo a continuación usamos un widget Column dentro del body, que organiza varios widgets (dos Text y un Icon) en una columna.

```dart
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
        Text('Primer Texto'),
        Text('Segundo Texto'),
        Icon(Icons.star, color: Colors.yellow),
    ],
    )
```
En el ejemplo anterior los textos y el ícono se organizan verticalmente gracias al widget Column. Icon es un widget que muestra un ícono (en este caso, una estrella).

 En la línea de código: 
```dart
    Icon(Icons.star, color: Colors.yellow),
``` 
color es una propiedad (o atributo) del widget Icon.

#### ¿Qué es una propiedad en el contexto de los widgets de Flutter/Dart?

En Flutter, los widgets son los bloques de construcción fundamentales de la interfaz de usuario. Cada widget puede configurarse y personalizarse mediante una serie de propiedades o atributos. Estas propiedades definen cómo se ve y se comporta el widget.

Pensemos en un widget como un `objeto` en programación orientada a objetos. Las propiedades son como las variables miembro de ese objeto, que almacenan información sobre su estado y apariencia.

>
En el caso del widget Icon, algunas de sus propiedades más comunes incluyen:

Icons.star: Esta no es una propiedad en sí misma, sino el valor que se le pasa al constructor del Icon para el argumento posicional que define el icono a mostrar. Icons.star es una constante que representa el icono de una estrella.
color: Esta es la propiedad que estamos discutiendo. Determina el color con el que se dibujará el icono. En este caso, se le está asignando el valor Colors.yellow, que es una constante que representa el color amarillo.
size: Otra propiedad opcional que define el tamaño del icono.
semanticLabel: Una propiedad para proporcionar una descripción textual del icono para accesibilidad.
>