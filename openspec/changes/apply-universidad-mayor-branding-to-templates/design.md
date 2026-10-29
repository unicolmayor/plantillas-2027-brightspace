# Design

## Context

Las once plantillas cargan cuatro hojas de estilo desde una ruta de biblioteca Brightspace, no tienen bloques CSS propios y comparten componentes Bootstrap. La hoja institucional define Lato y tamaños de encabezado distintos a los acordados. La motivación y el alcance están en `proposal.md`; los comportamientos esperados, en `specs/brightspace-template-presentation/spec.md`.

## Goals / Non-Goals

**Goals:**
- Aplicar la tipografía, escala y paleta acordadas sin depender de un cambio en el servidor institucional.
- Mantener cada HTML utilizable como página independiente al copiarlo a Brightspace.

**Non-Goals:**
- Modificar las hojas de estilo alojadas en Brightspace ni administrar la disponibilidad de Google Fonts.
- Rediseñar los componentes, cambiar el contenido o incluir `accordions.html` y `tabs_steps.html` en la actualización.

## Decisions

- **Mantener los estilos de presentación en cada plantilla.** Añadir los estilos de Roboto y los overrides locales en el `<head>`, después de las hojas institucionales. Se evita una nueva hoja CSS local que no viajaría necesariamente con una página copiada en Brightspace; la contrapartida es repetir las mismas reglas en once archivos.
- **Usar la URL canónica para los recursos.** Reemplazar el prefijo `/shared/.../pages/../_assets/` por la base HTTPS de Universidad Mayor y conservar el sufijo específico de cada imagen, hoja o script.
- **Asignar roles claros a la paleta.** Usar `#233a83` para el color principal y `#ffcf02` como acento secundario; cuando el amarillo sea fondo de texto o control, mantener un primer plano oscuro para el contraste. Conservar neutrales cuando sean necesarios para la legibilidad.
- **Cargar Roboto con respaldo local.** Solicitar Roboto a Google Fonts y declarar Arial y sans-serif como alternativas, de modo que la falta de acceso externo no impida mostrar el contenido.
- **Aplicar solo la escala confirmada.** Establecer los párrafos en 20 px y h1/h2 en 30 px; conservar la jerarquía tipográfica de h3–h6 y los tamaños auxiliares de controles, etiquetas y utilidades.

## Risks / Trade-offs

- [La red o la política de Brightspace puede bloquear Google Fonts] → Declarar Arial y sans-serif como fallback y comprobar la página sin la fuente remota.
- [El aumento de tamaño del texto puede alterar el ajuste en componentes estrechos] → Conservar reglas responsivas y verificar las páginas a anchos de escritorio y móvil; ajustar solo desbordamientos sin reducir la escala acordada del texto común.
- [Un enlace institucional incorrecto puede dejar recursos sin cargar] → Validar en cada HTML que no permanezcan referencias con el prefijo anterior y comprobar que la URL base devuelve los recursos esperados.
- [El amarillo puede ofrecer poco contraste con texto claro] → Reservar `#ffcf02` para acentos o fondos con texto oscuro y verificar la legibilidad de controles.

## Migration Plan

1. Actualizar los once archivos y revisar las rutas, reglas de fuente, tamaños y roles cromáticos en todos ellos.
2. Previsualizar cada plantilla en escritorio y móvil; comprobar especialmente acordeones, pestañas, elementos, imágenes y video.
3. Publicar las páginas actualizadas en Brightspace. Si la revisión detecta una regresión, restaurar la versión previa de la plantilla afectada y corregir antes de volver a publicar.

No se requiere migración de datos ni cambio de configuración del servidor.
