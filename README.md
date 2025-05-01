# wheathertest

App de pronostico de tiempo para prueba

## Getting Started

## Funcionalidades de la App

### Registro y Login
- Registro y login con base de datos local usando **FLOOR**.
- Se puede cambiar el idioma de la app desde cualquiera de estas pantallas.

### Previsión del Tiempo (API: [open-meteo.com](https://open-meteo.com/))

En la vista de previsión:
- Selección de idioma entre **inglés** y **español**, controlado por **intl**. También aplica para la sección *"¿Sabías qué?"* usando JSON en diferentes idiomas.
- Acceso al formulario de contacto.
- **Cerrar sesión (Log out).**
- Información del momento actual: si es de día o noche. En caso de día, muestra si está soleado, nublado o llueve, junto con la temperatura actual y la sensación térmica.
- Previsión por horas (desde la hora actual del día), mostrando:
    - Hora.
    - Icono correspondiente (soleado, nublado o lluvia).

- Previsión de los próximos **7 días** (incluyendo hoy):
    - Día.
    - Temperatura mínima.
    - Icono (soleado, nublado o lluvia) con porcentaje de probabilidad.

- **"¿Sabías qué?"**: un apartado extra donde se muestran curiosidades sobre meteorología, en el idioma seleccionado.

### Contacto
- Formulario de contacto:
    - Cambio de idioma disponible.
    - Validaciones en los campos del formulario.
