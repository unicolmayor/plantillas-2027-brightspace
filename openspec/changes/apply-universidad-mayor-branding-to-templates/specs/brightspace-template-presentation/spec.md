# Spec Delta

## Purpose

Establece una presentación visual institucional coherente y referencias de recursos estables para las plantillas HTML educativas de Brightspace.

## ADDED Requirements

### Requirement: Las plantillas cargan recursos de Universidad Mayor
Las plantillas `00_blank.html` a `10_tabs.html` SHALL resolver sus recursos de la biblioteca `_assets` desde la base HTTPS de Universidad Mayor.

#### Scenario: Carga de recursos institucionales
- **WHEN** se abre cualquiera de las plantillas 00–10 en Brightspace
- **THEN** cada referencia de la biblioteca `_assets` apunta a `https://virtual.universidadmayor.edu.co/shared/HTML-Template-Library/HTML-Templates-V3/_assets/` seguida de la ruta del recurso

### Requirement: Las plantillas usan la tipografía y escala acordadas
Las plantillas SHALL usar Roboto con alternativas Arial y sans-serif, mostrar el texto de párrafo a 20 px y los títulos h1 y h2 a 30 px, y conservar una jerarquía legible para h3–h6 y controles auxiliares.

#### Scenario: Presentación tipográfica estándar
- **WHEN** Roboto está disponible
- **THEN** el texto de párrafo se presenta en Roboto a 20 px y los títulos h1 y h2 en Roboto a 30 px

#### Scenario: Respaldo tipográfico
- **WHEN** Google Fonts o Roboto no están disponibles
- **THEN** el navegador usa Arial o una fuente sans-serif y conserva la escala definida para párrafos y títulos principales

### Requirement: Las plantillas aplican la paleta institucional
Las plantillas SHALL usar `#233a83` como color principal y `#ffcf02` como color secundario de forma coherente, manteniendo contraste suficiente en textos y controles.

#### Scenario: Identidad visual aplicada
- **WHEN** se presenta contenido y componentes de cualquiera de las plantillas 00–10
- **THEN** el azul principal y el amarillo secundario se aplican de manera consistente sin reducir la legibilidad del contenido

### Requirement: Se conserva el contenido y la funcionalidad existentes
La actualización visual SHALL conservar el contenido, la estructura adaptable y el comportamiento de los componentes existentes en las plantillas 00–10.

#### Scenario: Interacción y adaptación preservadas
- **WHEN** se visualiza una plantilla en distintos tamaños de pantalla o se usa uno de sus componentes interactivos
- **THEN** el contenido sigue disponible, el diseño se adapta al espacio y los componentes conservan su comportamiento previo
