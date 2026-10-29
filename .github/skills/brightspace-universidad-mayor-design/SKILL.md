---
name: brightspace-universidad-mayor-design
description: "Apply or adjust the Universidad Mayor visual design in Brightspace HTML templates. Use when styling Brightspace pages, updating template asset URLs, typography, colors, lists, jumbotrons, cards, tables, accordions, or tabs."
argument-hint: "Describe the Brightspace template or visual adjustment"
---

# Diseño Universidad Mayor para Brightspace

Aplica de forma consistente la identidad visual institucional a las plantillas HTML de Brightspace de este proyecto.

## Cuándo usarla

- Adaptar una o varias páginas HTML Brightspace a la identidad de Universidad Mayor.
- Ajustar en una plantilla tipografía, colores, listas, jumbotron, tarjetas, tablas, acordeones o pestañas.
- Comprobar que una página conserva el diseño adaptable y las interacciones después de actualizar su presentación.

## Reglas visuales

- Azul principal: `#233a83`.
- Amarillo secundario: `#ffcf02`.
- Fuente: Roboto de Google Fonts, con `Arial, sans-serif` como respaldo.
- Párrafos de contenido: `20px`.
- Títulos principales `h1` y `h2`: `30px`.
- Mantén la jerarquía de `h3`–`h6` y el tamaño auxiliar de etiquetas como `.small`; no conviertas controles, iconos o utilidades en texto de 20 px.
- Aplica los colores de forma semántica y conserva contraste: texto oscuro sobre amarillo y texto blanco sobre azul cuando corresponda.

## Recursos institucionales

En cada referencia de recursos a la biblioteca `_assets`, sustituye el prefijo:

```text
/shared/HTML-Template-Library/HTML-Templates-V3/pages/../_assets/
```

por:

```text
https://virtual.universidadmayor.edu.co/shared/HTML-Template-Library/HTML-Templates-V3/_assets/
```

Conserva el sufijo de cada recurso. Limita la sustitución a referencias de `_assets`; no alteres URLs de YouTube, imágenes externas u otros recursos ajenos a la biblioteca.

## Estilos de componentes

- En listas, colorea de azul `li`, los marcadores nativos `li::marker` y, para `ol.large-number`, el número y el punto generados por `li::before`.
- En `.jumbotron`, usa fondo amarillo y texto azul, incluidos sus párrafos.
- En `.card-standard`, usa borde azul; en `.card-graphic`, borde amarillo.
- En tablas `.table-bordered`, colorea de azul los bordes de la tabla y sus celdas. Da a `thead th` fondo azul y texto blanco.
- En acordeones, usa el amarillo como acento del encabezado sin alterar el comportamiento de colapso.
- En pestañas, presenta el estado activo con fondo azul, texto blanco y acento amarillo, conservando el comportamiento de selección.

## Procedimiento

1. Identifica las páginas que el usuario quiere cambiar. No modifiques automáticamente otras plantillas, aunque tengan nombres similares.
2. Lee el HTML y sus estilos existentes. Identifica clases, variantes y comportamientos; conserva el contenido, los identificadores, las clases estructurales y el marcado interactivo.
3. Actualiza únicamente las referencias de `_assets` que necesiten la URL institucional.
4. Añade Roboto y las reglas visuales después de las hojas de estilo institucionales para que prevalezcan sobre ellas. Si ya existe un bloque de estilos local, edítalo en vez de añadir reglas duplicadas; conserva los estilos particulares que no contradigan el pedido.
5. Si el usuario solicita un ajuste puntual, modifica solo el componente o selector solicitado y conserva el resto del diseño existente.
6. Valida el resultado: comprueba las rutas, las reglas CSS calculadas y, cuando haya navegador disponible, previsualiza a escritorio (aprox. `1280px`) y móvil (aprox. `390px`). Verifica que no haya desbordamiento horizontal y prueba los componentes interactivos que afectaste.
7. Resume qué cambió y qué comprobaciones se realizaron. Indica cualquier validación que no haya podido ejecutarse.

## Límites

- No cambies `accordions.html` ni `tabs_steps.html` cuando se usen solo como referencias, salvo que el usuario los incluya expresamente en el alcance.
- No reescribas contenido, traducciones, enlaces, imágenes, scripts, estructura de página ni datos de los componentes para resolver un pedido exclusivamente visual.
- No sustituyas hojas institucionales compartidas ni añadas dependencias al proyecto para aplicar estos estilos.
- Evita reglas globales que hagan que etiquetas auxiliares, controles o contenido de tarjetas pierdan su jerarquía o contraste.
