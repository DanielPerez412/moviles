Aplicación Momoland - Taller de Widgets

Descripción
Esta es una aplicación móvil desarrollada en Flutter y Dart para poner en práctica la construcción y composición de interfaces, la navegación y el manejo básico del estado. Todos los datos presentados son estáticos y no dependen de bases de datos, arreglos complejos ni servicios externos.

El proyecto está dividido en tres secciones principales administradas mediante un BottomNavigationBar:

Home: Pantalla principal que incluye un banner promocional, un carrusel de imágenes con desplazamiento horizontal y publicaciones creadas a partir de un widget personalizado (PostCard) que incluye un botón de «Me gusta» interactivo.

Chats: Lista de conversaciones con desplazamiento vertical construida mediante la reutilización del widget personalizado ChatTile, el cual recibe sus datos por parámetros.

Laboratorio: Pantalla interactiva que contiene un contador numérico con límites definidos (0 a 20), el cual actualiza dinámicamente el tamaño de la fuente, una barra de progreso visual y el valor en pantalla utilizando setState().