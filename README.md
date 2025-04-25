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
 body: Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
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

> [!TIP]
> En el caso del widget Icon, algunas de sus propiedades más comunes incluyen:
> 
> - Icons.star: Esta no es una propiedad en sí misma, sino el valor que se le pasa al constructor del Icon para el argumento posicional que define el icono a mostrar. Icons.star es una constante que representa el icono de una estrella.
> - color: Esta es la propiedad que estamos discutiendo. Determina el color con el que se dibujará el icono. En este caso, se le está asignando el valor Colors.yellow, que es una constante que representa el color amarillo.
> - size: Otra propiedad opcional que define el tamaño del icono.
> - semanticLabel: Una propiedad para proporcionar una descripción textual del icono para mejorar la accesibilidad para personas con visión reducida.
> 

##  El Estado Interno de los Widgets en Flutter

En Flutter, construimos nuestras interfaces de usuario con **widgets**. Podemos pensar en ellos como los elementos visuales de nuestra aplicación[^2]. Algunos widgets son estáticos y permanecen sin cambios una vez que se crean, mientras que otros tienen la capacidad de actualizar su apariencia y comportamiento dinámicamente a lo largo del tiempo. Esta capacidad de cambio se debe a lo que llamamos el **estado interno** del widget. Eata distinción crucial es la que nos permite clasificarlos: algunos widgets son estáticos e inmutables una vez creados, mientras que otros tienen la capacidad de cambiar dinámicamente a lo largo del tiempo. Esta capacidad de cambio reside en lo que llamamos el **estado interno** del widget.

[^2]: La función principal y fundamental de los widgets en Flutter es construir la interfaz de usuario. Sin embargo también son los widgets esos bloques con los que se define la estructura de una app. Si bien no se utilizan directamente para tareas puramente de lógica de negocio o infraestructura, son la forma en que esa lógica se presenta y con la que el usuario interactúa. Todo lo que se ve y con lo que el usuario interactúa en una aplicación Flutter es, en última instancia, un widget o una composición de ellos.

Si bien los widgets en sí mismos son principalmente descriptivos, están intrínsecamente ligados a la lógica de la UI a través de:
+ Callbacks: Muchos widgets (especialmente los interactivos) tienen propiedades que aceptan funciones de callback (onPressed, onChanged, onTap, etc.). Estas funciones definen qué sucede cuando el usuario interactúa con el widget, permitiendo implementar la lógica de la aplicación.
+ Gestión del Estado: Como vimos, los StatefulWidget y sus objetos State son widgets que gestionan la información dinámica que afecta a la UI. Aunque el estado en sí no es un widget visual, está directamente asociado a uno y determina cómo se renderiza.
+ Contexto (BuildContext): Cada widget tiene acceso a un BuildContext, que proporciona información sobre la ubicación del widget en el árbol de widgets y permite interactuar con el framework (por ejemplo, acceder al Theme o navegar entre pantallas).

## ¿Qué es el Estado Interno de un Widget?

El **estado interno** de un widget se refiere a la información que el widget mantiene y que puede cambiar durante su ciclo de vida. Este estado dicta cómo se renderiza el widget en un momento dado y cómo reacciona a eventos o interacciones.

Para entenderlo mejor desde la perspectiva de la POO:

* **Widget sin estado (StatelessWidget):** Podemos compararlo con un objeto cuyos atributos se definen en su construcción y permanecen constantes durante toda su existencia. No tienen la capacidad de modificar su propia información interna que afecte su representación visual.

* **Widget con estado (StatefulWidget):** Este tipo de widget tiene asociado un objeto **State**. Este objeto `State` es donde reside el estado interno mutable del widget. Es decir, el objeto `State` contiene datos que pueden cambiar, y cuando estos datos cambian, el widget se reconstruye para reflejar la nueva información.

El **estado interno** de un widget se refiere a la información que el widget gestiona y que puede variar durante su existencia. Este estado influye directamente en cómo se muestra el widget en un momento específico y cómo responde a diferentes eventos o interacciones.

En Flutter, distinguimos principalmente dos tipos de widgets en relación con el estado:

* **Widgets sin estado (StatelessWidget):** Estos widgets son inmutables. Una vez que se crean, sus propiedades no pueden cambiar, y por lo tanto, su apariencia y comportamiento se mantienen fijos durante todo su ciclo de vida. Son útiles para mostrar información que no necesita actualizarse, como un icono estático o un texto simple.

* **Widgets con estado (StatefulWidget):** Estos widgets tienen la capacidad de cambiar su apariencia y comportamiento con el tiempo. Esta capacidad se logra mediante un objeto separado llamado **State** que está asociado al `StatefulWidget`. El objeto `State` es donde reside el estado interno mutable del widget. Cuando este estado cambia, el widget se reconstruye para reflejar la nueva información.

**En esencia:** Un `StatelessWidget` es como una fotografía: una vez tomada, no cambia. Un `StatefulWidget` es más como una película: su contenido puede evolucionar con el tiempo. El objeto `State` es el encargado de gestionar esa evolución.

## La Necesidad del Estado Interno

El estado interno es fundamental para crear interfaces de usuario que respondan a las acciones del usuario, a los datos que cambian o al paso del tiempo. Algunos ejemplos donde el estado interno es necesario incluyen:

* Un botón que cambia de color al ser presionado.
* Una lista de elementos que se actualiza cuando se agregan o eliminan elementos.
* Una animación que se ejecuta.
* Un formulario donde se muestra la entrada del usuario en tiempo real.

En todos estos casos, el widget necesita recordar cierta información (por ejemplo, si un botón está presionado, cuáles son los elementos de la lista, el progreso de la animación, el texto ingresado) y actualizar su visualización cuando esa información cambia.

## Componentes Clave de los Widgets con Estado

Un `StatefulWidget` en Flutter siempre involucra dos clases:

1.  **La clase del `StatefulWidget`:** Esta clase en sí misma es inmutable y su única responsabilidad es crear e proporcionar la instancia del objeto `State` asociado.

2.  **La clase del `State`:** Esta clase es donde se almacena y gestiona el estado interno mutable del widget. Contiene las variables que pueden cambiar y define cómo se reconstruye el widget (a través de su método `build()`) cuando este estado se modifica. También se gestiona el ciclo de vida del widget y su estado dentro de esta clase.

**Ejemplo Simplificado:**

```dart
import 'package:flutter/material.dart';

class Interruptor extends StatefulWidget {
  const Interruptor({super.key});

  @override
  State<Interruptor> createState() => _InterruptorState(); // Crea el objeto State
}

class _InterruptorState extends State<Interruptor> {
  bool _estaEncendido = false; // Este es el estado interno mutable

  void _cambiarEstado() {
    setState(() { // Notifica a Flutter que el estado ha cambiado
      _estaEncendido = !_estaEncendido;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _cambiarEstado,
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          color: _estaEncendido ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            _estaEncendido ? 'ENCENDIDO' : 'APAGADO',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
```

## ¿Qué es Material Design?

Material Design es un sistema de diseño creado por Google que busca unificar la experiencia del usuario en todos sus productos y plataformas.
Se basa en principios de diseño visual que combinan elementos clásicos con la innovación de la tecnología digital.
Su objetivo es crear interfaces intuitivas, atractivas y consistentes, con énfasis en la jerarquía visual, el movimiento y la interacción.
Material Design no es solo un conjunto de reglas visuales, sino un sistema completo que abarca aspectos como tipografía, color, iconos y animaciones.

### Material Design en Flutter:
Flutter incorpora Material Design como uno de sus pilares fundamentales.
Flutter proporciona un conjunto de widgets (elementos de interfaz) que siguen las directrices de Material Design, lo que facilita la creación de aplicaciones con un aspecto y comportamiento coherentes con las aplicaciones de Google.
Esto significa que los desarrolladores de Flutter pueden implementar fácilmente elementos como botones, barras de navegación, tarjetas y otros componentes visuales que cumplen con los estándares de Material Design.
La integración de Material Design en Flutter simplifica el proceso de diseño y desarrollo, permitiendo a los desarrolladores crear aplicaciones atractivas y funcionales de manera eficiente.

### ¿Para qué se usa?:

+ Consistencia: Garantiza que las aplicaciones tengan un aspecto y comportamiento uniforme en diferentes dispositivos y plataformas.
+ Usabilidad: Facilita la interacción del usuario al proporcionar elementos de interfaz intuitivos y familiares.
+ Atractivo visual: Permite crear aplicaciones con un diseño moderno y atractivo.
+ Eficiencia en el desarrollo: Proporciona componentes predefinidos que aceleran el proceso de diseño y desarrollo.
+ Experiencia de usuario mejorada: Al seguir las guías de Material Design, se ofrece a los usuarios una experiencia fluida y agradable.

# ¿Cómo crear nuestro Hola Mundo desde cero?

## Instalación de entorno de trabajo

## Hola mundo

### Función main

### Modos de ejecución

### Scaffold

#### AppBar

#### Body

# Entrada y Salida en Flutter

En el desarrollo de aplicaciones, la **entrada y salida estándar (stdin/stdout)** son canales fundamentales para la comunicación con el sistema operativo y, tradicionalmente, con el usuario a través de la línea de comandos. Sin embargo, las aplicaciones con interfaces gráficas de usuario (GUI) como las que se construyen con Flutter, interactúan con el usuario de manera diferente, principalmente a través de elementos visuales en pantalla.

## Entrada y Salida Estándar (stdin/stdout) en Flutter

Las aplicaciones Flutter, al ser aplicaciones con GUI, **no utilizan directamente la entrada y salida estándar (stdin/stdout) de la consola para la interacción principal con el usuario.** La interacción se realiza a través de widgets visuales como campos de texto, botones, listas, etc.

Sin embargo, la entrada y salida estándar pueden ser relevantes en ciertos contextos durante el desarrollo y la depuración:

* **`print()`:** La función `print()` en Dart (el lenguaje utilizado por Flutter) escribe texto en la consola donde se está ejecutando la aplicación. Esto es extremadamente útil para el **registro de información (logging)**, la **depuración** y la **visualización de valores de variables** durante el desarrollo.

    ```dart
    void miFuncion() {
      int resultado = 5 + 3;
      print('El resultado de la operación es: $resultado');
    }
    ```

    El mensaje "El resultado de la operación es: 8" aparecerá en la consola del IDE o terminal donde se esté ejecutando la aplicación.

* **Entrada desde la consola (limitado):** Aunque no es la forma principal de interacción con el usuario final, es posible leer datos desde la consola durante el desarrollo utilizando la librería `dart:io`. Sin embargo, esto generalmente se limita a herramientas de línea de comandos o scripts construidos con Dart, y no es la práctica común para la interacción del usuario en una aplicación Flutter con GUI.

    ```dart
    import 'dart:io';

    void main() {
      stdout.write('Ingrese su nombre: ');
      String? nombre = stdin.readLineSync();
      if (nombre != null) {
        print('Hola, $nombre!');
      } else {
        print('No se ingresó ningún nombre.');
      }
    }
    ```

    Este código funcionará si se ejecuta como una aplicación de consola de Dart, pero no es la manera típica de obtener entrada del usuario en una aplicación Flutter con interfaz gráfica.

> En resumen, para la interacción directa con el usuario en una aplicación Flutter, nos enfocamos en los widgets de la interfaz de usuario en lugar de la entrada/salida estándar de la consola.

## Cómo Leer Datos Ingresados por el Usuario en Flutter

La forma principal de leer datos ingresados por el usuario en Flutter es mediante el uso de widgets como `TextField` (para entrada de texto) y otros widgets interactivos como `Checkbox`, `Radio`, `Slider`, etc.

### Usando el Widget `TextField`

El `TextField` permite al usuario ingresar texto a través del teclado en pantalla. Para acceder al texto ingresado, generalmente se utiliza un `TextEditingController`.

**Pasos:**

1.  **Crear un `TextEditingController`:** Este objeto se encarga de gestionar el texto dentro del `TextField`.

    ```dart
    final _controller = TextEditingController();
    ```

2.  **Asociar el `TextEditingController` al `TextField`:** Se pasa el controlador a la propiedad `controller` del `TextField`.

    ```dart
    TextField(
      controller: _controller,
      decoration: const InputDecoration(
        labelText: 'Ingrese su nombre',
      ),
    )
    ```

3.  **Acceder al texto ingresado:** Puedes acceder al texto actual del `TextField` a través de la propiedad `text` del controlador. Esto se puede hacer en respuesta a un evento (por ejemplo, al presionar un botón).

    ```dart
    ElevatedButton(
      onPressed: () {
        String nombreIngresado = _controller.text;
        print('El nombre ingresado es: $nombreIngresado');
        // Aquí puedes usar la variable nombreIngresado para mostrarla en pantalla.
      },
      child: const Text('Mostrar Nombre'),
    )
    ```

4.  **Liberar el `TextEditingController`:** Es importante liberar los recursos del controlador cuando ya no se necesite, generalmente en el método `dispose()` de un `StatefulWidget`.

    ```dart
    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
    ```

### Otros Widgets de Entrada

Otros widgets como `Checkbox`, `Radio`, `Slider`, `DropdownButton`, etc., tienen sus propias formas de acceder al valor seleccionado o ingresado por el usuario, generalmente a través de propiedades como `value` y callbacks como `onChanged`.

## Cómo Mostrar Datos en Pantalla en Flutter

La salida de información al usuario en Flutter se realiza mediante la visualización de widgets que muestran datos. Algunos widgets comunes para esto son:

* **`Text`:** Para mostrar texto plano.

    ```dart
    Text('El nombre ingresado es: $nombreIngresado');
    ```

* **`TextFormField`:** Similar a `TextField` pero con funcionalidades adicionales como validación.

* **Otros widgets:** La información también se puede mostrar indirectamente a través de la modificación de la apariencia de otros widgets (cambiando colores, habilitando/deshabilitando elementos, etc.) en respuesta a la entrada del usuario o a eventos.

**Ejemplo Completo:**

```dart
import 'package:flutter/material.dart';

class EntradaSalidaPantalla extends StatefulWidget {
  const EntradaSalidaPantalla({super.key});

  @override
  State<EntradaSalidaPantalla> createState() => _EntradaSalidaPantallaState();
}

class _EntradaSalidaPantallaState extends State<EntradaSalidaPantalla> {
  final _controller = TextEditingController();
```

# Maquetación

## Columnas y filas

Consultar en la carpeta correspondiente
[]