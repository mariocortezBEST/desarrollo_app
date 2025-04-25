# Instructivo para la Utilización de Row y Column en Flutter

Tanto `Row` como `Column` constituyen widgets de diseño fundamentales dentro del framework Flutter, cuya función primordial reside en la organización de widgets descendientes a lo largo de una única dimensión: horizontal (`Row`) o vertical (`Column`).

## 1. Row (Disposición Horizontal)

Un `Row` dispone sus widgets descendientes en una secuencia lineal horizontal.

### Creación de un Row:

Para la instanciación de un `Row`, se requiere envolver una colección de widgets descendientes mediante el constructor `Row()`.

```dart
Row(
  children: [
    Text('Widget 1'),
    Text('Widget 2'),
    Icon(Icons.star),
  ],
)
```

### Propiedades Fundamentales de Row:

#### `mainAxisAlignment`:

Esta propiedad ejerce control sobre la distribución de los widgets descendientes a lo largo del eje principal (horizontal). Entre los valores comúnmente empleados se encuentran:

* `MainAxisAlignment.start`: Alinea los descendientes al inicio del `Row`.
* `MainAxisAlignment.end`: Alinea los descendientes al final del `Row`.
* `MainAxisAlignment.center`: Centra los descendientes dentro del `Row`.
* `MainAxisAlignment.spaceBetween`: Distribuye los descendientes de manera que se genere un espaciado equitativo entre ellos.
* `MainAxisAlignment.spaceAround`: Distribuye los descendientes asignando un espaciado idéntico alrededor de cada uno.
* `MainAxisAlignment.spaceEvenly`: Distribuye los descendientes de forma que el espaciado entre ellos, así como el espacio anterior al primer descendiente y posterior al último, sea uniforme.

#### `crossAxisAlignment`:

Esta propiedad determina la alineación de los widgets descendientes a lo largo del eje transversal (vertical). Los valores usuales comprenden:

* `CrossAxisAlignment.start`: Alinea los descendientes en la parte superior del `Row`.
* `CrossAxisAlignment.end`: Alinea los descendientes en la parte inferior del `Row`.
* `CrossAxisAlignment.center`: Centra verticalmente los descendientes dentro del `Row`.
* `CrossAxisAlignment.baseline`: Alinea las líneas de base del texto de los descendientes (requiere la especificación de `textBaseline`).
* `CrossAxisAlignment.stretch`: Extiende los descendientes para que ocupen la totalidad de la altura del `Row`.

#### `mainAxisSize`:

Esta propiedad regula la cantidad de espacio que el `Row` ocupa sobre su eje principal.

* `MainAxisSize.max`: El `Row` utiliza todo el ancho disponible.
* `MainAxisSize.min`: El `Row` emplea únicamente el ancho necesario para contener sus descendientes.

### Ejemplo Ilustrativo de Row:

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    ElevatedButton(onPressed: () {}, child: Text('Botón 1')),
    Text('Texto Central'),
    Icon(Icons.favorite, color: Colors.red),
  ],
)
```
## 2. Column (Disposición Vertical)

Un `Column` organiza sus widgets descendientes en una secuencia lineal vertical.

### Creación de un Column:

De manera análoga a `Row`, se deben envolver los widgets descendientes en el constructor `Column()`.

```dart
Column(
  children: <Widget>[
    Text('Elemento 1'),
    Text('Elemento 2'),
    FlutterLogo(size: 50),
  ],
)
```
### Propiedades Fundamentales de Column:
Las propiedades de Column presentan una analogía con las de Row, con la salvedad de la
inversión de los ejes:

* mainAxisAlignment: Controla la distribución a lo largo del eje principal (vertical).
* crossAxisAlignment: Controla la alineación a lo largo del eje transversal (horizontal).
* mainAxisSize: Controla la extensión espacial que la Column ocupa sobre su eje principal (vertical).

### Ejemplo Ilustrativo de Column:

```dart
Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text('Título Principal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
Text('Subtítulo'),
],
)
```
## 3. Uso de Containers:

La sinergia entre los widgets `Container` y `Row` o `Column` en Flutter resulta fundamental para la construcción de interfaces de usuario flexibles y visualmente atractivas. Mientras que `Row` y `Column` se encargan de la disposición lineal de múltiples widgets hijos, el widget `Container` actúa como un envoltorio versátil que permite aplicar propiedades de estilo y espaciado a uno o varios widgets. Al combinar estas herramientas, se logra un control preciso sobre la presentación de los elementos en la pantalla. Por ejemplo, se puede utilizar un `Container` para definir un fondo de color, agregar márgenes o rellenos, aplicar bordes o sombras a un grupo de widgets dispuestos horizontalmente dentro de un `Row`, facilitando así la creación de secciones visualmente distintas y bien organizadas dentro de la aplicación.

### Creación y Estilización del Widget Container en Flutter

El widget `Container` en Flutter es un bloque de construcción fundamental para la interfaz de usuario, ya que permite envolver otros widgets y aplicarles diversas propiedades de presentación, como tamaño, color de fondo, márgenes, rellenos, bordes y sombras.

#### 3.1. Creación de un Container Básico:

La forma más sencilla de crear un `Container` es instanciarlo sin argumentos. Esto generará un contenedor invisible que se ajustará al tamaño de su widget hijo (si lo tiene) o al espacio disponible de su padre.

```dart
Container(
  child: Text('Contenido dentro del Container'),
)
```
#### 3.2. Establecimiento del Tamaño:

Se pueden definir dimensiones fijas para el `Container` mediante las propiedades `width` (ancho) y `height` (alto).

```dart
Container(
  width: 200.0, // Ancho de 200 píxeles
  height: 150.0, // Alto de 150 píxeles
  child: Center(child: Text('Tamaño Fijo')),
)
```

#### 3.3. Aplicación de Color de Fondo:
La propiedad color permite establecer el color de fondo del Container. Se utiliza un objeto de
la clase Color de Flutter.
```dart
Container(
color: Colors.amber[200], // Color de fondo amarillo claro
padding: EdgeInsets.all(16.0),
child: Text('Fondo con Color'),
)
```
#### 3.4. Adición de Márgenes:
Los márgenes definen el espacio alrededor del Container, separándolo de otros widgets
adyacentes. Se controlan con la propiedad margin, que acepta un objeto EdgeInsets.
* EdgeInsets.all(double value): Márgenes iguales en todos los lados.
* EdgeInsets.symmetric({double vertical, double horizontal}): Márgenes
verticales y horizontales independientes.
* EdgeInsets.only({left, top, right, bottom}): Márgenes individuales para
cada lado.
```dart
Container(
    margin: EdgeInsets.only(top: 20.0, left: 30.0), // Margen superior de 20px e izquierdo de 30px
    color: Colors.lightGreen[100],
    padding: EdgeInsets.all(16.0),// padding de los cuatro lados de 16px
    child: Text('Con Márgenes'),//el texto que se va a mostrar
)
```
#### 3.5. Adición de Rellenos (Padding):
El relleno define el espacio dentro del Container, entre sus bordes y su widget hijo. Se controla
con la propiedad padding, que también acepta un objeto EdgeInsets.
```dart
Container(
    color: Colors.pink[100],
    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0), // Relleno horizontal y vertical
    diferente
    child: Text('Con Relleno'),
)
```
#### 3.6. Aplicación de Decoraciones con BoxDecoration:
Para opciones de estilo más avanzadas, como bordes, bordes redondeados, sombras y
gradientes, se utiliza la propiedad decoration, que requiere un objeto BoxDecoration.
* Bordes: Se definen con la propiedad border, que acepta un Border object (e.g.,
Border.all()).
* Bordes Redondeados: Se logran con la propiedad borderRadius, que toma un
BorderRadius (e.g., BorderRadius.circular()).
* Sombras: Se añaden con la propiedad boxShadow, que espera una lista de objetos
BoxShadow.

```dart
Container(
    width: 180.0,
    height: 120.0,
    decoration: BoxDecoration(
    color: Colors.orange[200],
    border: Border.all(color: Colors.deepOrange, width: 3.0), // Borde sólido
    borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
    boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 5), // Desplazamiento de la sombra
        ),
        ],
    ),
    child: Center(child: Text('Decorado')),
)
```

#### 3.7. Combinación de Propiedades:
El siguiente es un ejemplo de como quedaría al combinar varias de estas propiedades para lograr el efecto visual deseado.

![Container adaptado al texto](https://github.com/gerardorosales2222/desarrollo_app/blob/main/img/04%20container.png)

```dart
class MiContenedor extends StatelessWidget {
  const MiContenedor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(20.0),
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10.0),
        ),
    child: Text('Tamaño según texto que contiene'),
    );
  }
}
```


#### 3.8. Uso de containers para maquetar:

El siguiente es un ejemplo de una maquetación muy simple utilizando containers:

![Ejemplo de clase](https://github.com/gerardorosales2222/desarrollo_app/blob/main/img/05%20container.png)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Cuadrado extends StatelessWidget {
  const Cuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.green[400],
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber, title: Center(
          child: Text('Ejemplo de containers', style: TextStyle(color: Colors.white),),
        ),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              Cuadrado(),
              Cuadrado(),
            ]
        ),
      ),
    );
  }
}