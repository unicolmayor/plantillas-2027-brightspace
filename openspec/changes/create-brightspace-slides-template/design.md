# Design

## Context

Véase `proposal.md` para la motivación. La plataforma no admite una integración basada en `iframe` ni la carga independiente de los cinco documentos. Cada plantilla contiene recursos compartidos, estilos particulares, contenido y scripts que deben integrarse sin conservar HTML anidado ni cargas externas innecesarias.

## Goals / Non-Goals

**Goals:**
- Mantener las cinco páginas como secciones de un único documento.
- Cargar una sola vez Bootstrap, Font Awesome, Roboto y los scripts institucionales.
- Preservar el footer visual y la presentación responsive de las plantillas.
- Mantener accesibles los controles de pestañas y navegación.

**Non-Goals:**
- Crear archivos HTML auxiliares cargados mediante `iframe`, fetch o Ajax.
- Modificar el contenido educativo de las cinco plantillas.
- Cambiar plantillas existentes usadas como referencias independientes.
- Añadir dependencias de JavaScript externas al proyecto.

## Decisions

- **DOM único con secciones controladas por estado:** Cada plantilla se integrará como una sección hija del contenedor principal. El estado activo alternará la visibilidad mediante clases y atributos ARIA, sin reemplazar contenido ni recargar la página.
- **Footer compartido repetido por sección:** La misma estructura visual del footer se colocará una vez al final de cada sección activa; no se añadirá como elemento fijo global ni se duplicarán sus scripts.
- **Bootstrap existente como única base interactiva:** Los scripts institucionales y Bootstrap se cargarán una única vez al final de `slides.html`; las pestañas recibirán vínculos únicos, estados ARIA y objetivos propios para evitar conflictos entre sus tres grupos.
- **Navegación fija lateral:** Los botones se posicionarán respecto al viewport del contenedor con iconos Font Awesome, estados `disabled`, etiquetas accesibles y foco visible.
- **Hash opcional para la diapositiva actual:** El identificador actual podrá reflejarse en el hash sin considerar esa URL como fuente única de navegación. La carga inicial leerá un hash válido y conservará la primera diapositiva como respaldo.
- **Responsive CSS desde los contenedores existentes:** Las reglas se combinarán con las clases Bootstrap de las plantillas. En pantallas pequeñas se reducirá el desplazamiento lateral, se permitirá el flujo vertical y se conservarán las áreas táctiles mínimas.

## Risks / Trade-offs

- [Los cinco documentos repiten estructuras completas] → Extraer únicamente el contenido útil y las hojas de estilo, eliminando cabezales, scripts y footers duplicados.
- [Las pestañas pueden compartir identificadores implícitos] → Asignar identificadores únicos a cada grupo antes de integrar los contenidos.
- [La introducción usa una composición visual con altura fija] → Validarla con vistas desktop y móvil e ajustar la altura con unidades responsive.
- [Las flechas podrían cubrir texto] → Mantener un margen interno lateral y reducir su escala en viewport estrecho.
- [Brightspace puede aplicar estilos propios al HTML embebido] → Usar selectores específicos bajo el contenedor de la presentación para preservar el diseño esperado.
