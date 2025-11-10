# Gemini Code Assist Context: Proyecto "Nexo"

## 1. Mi Perfil y Objetivos
Soy un desarrollador de software que usa Flutter. Quiero que actúes como mi socio de desarrollo experto, un "Senior Tech Lead" en Flutter. Ayúdame a construir esta aplicación desde cero, siguiendo las mejores prácticas, pero siempre respetando la visión de diseño y la arquitectura que definimos aquí.

## 2. Visión del Proyecto (Nexo)
Estamos construyendo "Nexo", una aplicación móvil premium para administrar enlaces de redes sociales (una app "link-in-bio").

### Funcionalidad Principal:
1.  **CRUD de Enlaces:** El usuario puede agregar, ver, editar y eliminar sus enlaces sociales (e.g., Instagram, TikTok, Portafolio). Cada enlace tendrá un título y una URL.
2.  **Pantalla Principal:** Muestra una lista vertical de todos los enlaces agregados.
3.  **Diálogo QR:** Al tocar cualquier tarjeta de enlace, se debe abrir un diálogo modal que muestra un código QR grande para esa URL específica, junto con botones para "Compartir" y "Copiar Enlace".

## 3. Arquitectura Técnica
Nuestra arquitectura debe ser robusta, escalable y mantenible.
* **Arquitectura:** Clean Architecture (Capas de `data`, `domain` y `presentation`).
* **Gestión de Estado:** **BLoC** (`flutter_bloc`). Usaremos el patrón de Eventos, Estados y Blocs.
* **Base de Datos Local:** Usaremos una base de datos local (como **Isar** o **Drift**) para la persistencia de los enlaces. Por favor, ayúdame a elegir e implementar la mejor.
* **Inyección de Dependencias:** Usaremos `get_it` con `injectable`.
* **Navegación:** `go_router`.

## 4. Visión de Diseño (¡MUY IMPORTANTE!)
Esta es la parte clave. La estética es **bold, oscura, moderna y de alto contraste**.

* **Color de Fondo Principal:** Un negro/carbón muy oscuro (e.g., `#121212`).
* **Color de Acento Principal:** Un **verde neón/lima** vibrante (como el de las imágenes de referencia).

### Componente: Pantalla Principal (Lista de Enlaces)
* La pantalla será un `ListView`.
* Cada elemento de la lista será una **tarjeta grande y prominente** (una por cada enlace social).
* **Estilo de la Tarjeta de Enlace (ACTUALIZADO - CRÍTICO):**
    * **Fondo:** El fondo NO es un color sólido. Es un **gradiente sutil (radial o lineal)** que crea profundidad. Debe comenzar con un **verde oliva muy oscuro y desaturado** (e.g., `#2A3328`) y desvanecerse suavemente hacia los bordes en un **carbón/negro** (e.g., `#1A1A1A` o `#121212`). Esto le da ese efecto de "resplandor" de la referencia.
    * **Esquinas:** Redondeadas.
    * **Contenido (Izquierda):** Texto de título en negrita y blanco (e.g., "Instagram"), y un subtítulo en gris claro (e.g., "Mis fotos y reels").
    * **Contenido (Derecha):** Un **icono grande y estilizado** de la red social (e.g., logo de Instagram) renderizado en el **color verde neón/lima**.
    * **Botón de Acción:** Un botón circular pequeño en la esquina inferior izquierda, relleno del **verde neón/lima** y con un icono de flecha.

### Componente: Diálogo QR
* Cuando se toca una tarjeta de enlace, el `Dialog` que aparece debe ser también una tarjeta grande.
* **Fondo del Diálogo (ACTUALIZADO - CRÍTICO):** El diálogo debe usar el **mismo fondo de gradiente (verde oliva oscuro a negro)** que las tarjetas de enlace. No es un color sólido.
* **Contenido del Diálogo:**
    * Un `QrImageView` grande (el QR en sí mismo, blanco sobre fondo transparente).
    * El título del enlace (e.g., "Instagram") en texto blanco y negrita debajo del QR.
    * **Botón Primario ("Share"):** Forma de píldora, relleno sólido del **verde neón/lima**.
    * **Botón Secundario ("Copy Link"):** Forma de píldora, con fondo oscuro y un **borde de color verde neón/lima**.

## 5. Extras (Añade tu experiencia aquí)
* **Reordenar:** Quiero implementar `Drag-and-Drop` en la `ListView` para reordenar los enlaces.
* **Validación:** Ayúdame a implementar validación de URLs al agregar/editar enlaces.
* **Theming:** Crear un archivo `app_theme.dart` centralizado para definir nuestros colores (`AppColors`), tipografía (`AppTextStyles`) y el `ThemeData` oscuro.

---