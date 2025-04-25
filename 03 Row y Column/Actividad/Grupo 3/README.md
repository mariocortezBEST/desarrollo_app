# ¿Cómo subir archivos en la carpeta del grupo?

## 1.- Hacer un Fork del repositorio:
Crear un fork y asegurarse de `NO` marcar la opción ``Copy the main branch only``

## 2.- Clonar la rama alumnos en tu PC:
Para clonar solamente la rama específica `alumnos` del repositorio se puede utilizar el siguiente comando en la terminal:

```bash
git clone --single-branch --branch alumnos https://github.com/NOMBRE_DE_USUARIO_DEL_QUE_HIZO_EL_FORK/desarrollo_app/
```
## 3.- Realizar los cambios solamente en la carpeta que corresponde a tu grupo:
Hacer los cambios en el repositorio local.

## 4.- Subir los cambios:
```bash
git add .
git commit -m "subiendo el tp2 del grupo 7"
git push origin alumnos
```