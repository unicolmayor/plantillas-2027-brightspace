# Proposal

## Why

Brightspace no permite mantener en esta plantilla una navegación basada en varios archivos cargados mediante `iframe`. Se necesita una presentación integrada en un único archivo HTML que conserve las cinco plantillas solicitadas, permita avanzar y retroceder de forma clara y siga siendo utilizable en escritorio, móvil y dispositivos táctiles.

## What Changes

- Crear la plantilla raíz `slides.html` en un único documento HTML.
- Integrar los contenidos visuales de `01_intro.html`, `04_basic_page.html`, `10_tabs.html`, `06_conclusion.html` y `03_meet_your_facilitator.html`, en ese orden.
- Presentar una sola diapositiva a la vez mediante un carrusel interno sin `iframe`.
- Añadir flechas circulares de navegación en los bordes izquierdo y derecho, centradas en el área visible y deshabilitadas en los extremos del recorrido.
- Incluir navegación mediante teclado y gestos táctiles horizontales.
- Compartir una sola instancia visual del footer, mostrada debajo de cada diapositiva.
- Mantener identificadores únicos para componentes interactivos, especialmente las pestañas de `10_tabs.html`.
- Aplicar estilos responsive institucionales sin duplicar las hojas de estilos o scripts comunes.

## Capabilities

### New Capabilities

- `brightspace-slides-navigation`: Navegación secuencial, accesible y responsive entre las diapositivas integradas.

### Modified Capabilities

Ninguna.

## Impact

- Añade `slides.html` como una nueva plantilla Brightspace.
- Reutiliza el contenido y los recursos visuales de `01_intro.html`, `04_basic_page.html`, `10_tabs.html`, `06_conclusion.html` y `03_meet_your_facilitator.html`.
- Usa Bootstrap 4.3.1, Font Awesome, Roboto, estilos institucionales y scripts de la biblioteca compartida existentes en el proyecto.
- No crea dependencias de JavaScript externas ni archivos HTML auxiliares para la navegación.
