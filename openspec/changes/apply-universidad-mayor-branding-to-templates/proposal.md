# Proposal

## Why

Las plantillas HTML 00–10 todavía apuntan a rutas locales de Brightspace y heredan una presentación tipográfica y cromática que no coincide con la identidad visual solicitada. Alinear recursos, tipografía, tamaños y colores facilitará su uso en cursos de Universidad Mayor con una apariencia consistente.

## What Changes

- Actualizar en las plantillas `00_blank.html` a `10_tabs.html` las referencias a `/shared/HTML-Template-Library/HTML-Templates-V3/pages/../_assets/` para que apunten a `https://virtual.universidadmayor.edu.co/shared/HTML-Template-Library/HTML-Templates-V3/_assets/`.
- Aplicar Roboto mediante Google Fonts, con Arial y sans-serif como alternativas.
- Definir el texto de párrafo en 20 px y los títulos principales h1/h2 en 30 px; conservar la jerarquía de h3–h6 y los tamaños auxiliares necesarios para controles y etiquetas.
- Unificar el color principal en `#233a83` y el secundario en `#ffcf02`.
- Conservar el contenido, la estructura, la responsividad y el comportamiento actual de los componentes interactivos.

## Capabilities

### New Capabilities

- `brightspace-template-presentation`: Presentación visual coherente y recursos institucionales en las plantillas Brightspace.

### Modified Capabilities

Ninguna.

## Impact

- Afecta exclusivamente a las plantillas `00_blank.html`, `01_intro.html`, `02_module_intro.html`, `03_meet_your_facilitator.html`, `04_basic_page.html`, `05_video_lecture.html`, `06_conclusion.html`, `07_elements.html`, `08_images.html`, `09_accordions.html` y `10_tabs.html`.
- Depende de la disponibilidad de los recursos alojados en el dominio Brightspace de Universidad Mayor y de Google Fonts para cargar Roboto; se conserva un respaldo tipográfico del sistema.
- No modifica las plantillas de referencia `accordions.html` ni `tabs_steps.html`, ni añade dependencias al proyecto.
