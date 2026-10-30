# Spec Delta

## Purpose

Permite presentar en Brightspace una secuencia integrada de plantillas dentro de un único archivo HTML, con navegación consistente en escritorio y dispositivos móviles.

## ADDED Requirements

### Requirement: Secuencia integrada de diapositivas
La plantilla SHALL presentar exactamente una vez cada una de las cinco secciones de contenido en el orden indicado.

#### Scenario: Se carga la presentación
- **WHEN** el usuario abre `slides.html`
- **THEN** se muestra inicialmente la sección correspondiente a `01_intro.html`
- **AND** las demás secciones permanecen ocultas

#### Scenario: El recorrido se mantiene completo
- **WHEN** el usuario avanza o retrocede por la presentación
- **THEN** las secciones se muestran únicamente en el orden `01_intro.html`, `04_basic_page.html`, `10_tabs.html`, `06_conclusion.html` y `03_meet_your_facilitator.html`

### Requirement: Navegación lateral bidireccional
La plantilla SHALL ofrecer controles laterales para avanzar y retroceder entre secciones adyacentes.

#### Scenario: Avance desde una sección intermedia
- **WHEN** el usuario activa la flecha derecha desde una sección que tiene sucesora
- **THEN** se muestra la sección sucesora

#### Scenario: Retroceso desde una sección intermedia
- **WHEN** el usuario activa la flecha izquierda desde una sección que tiene antecesora
- **THEN** se muestra la sección antecesora

#### Scenario: Navegación en los extremos
- **WHEN** la presentación se encuentra en la primera o última sección
- **THEN** el control que no tiene destino queda deshabilitado

### Requirement: Navegación accesible alternativa
La plantilla SHALL permitir controlar el recorrido con teclado o gesto táctil horizontal sin depender únicamente del puntero.

#### Scenario: Uso con teclado
- **WHEN** el usuario pulsa las teclas de flecha izquierda o derecha fuera de un campo editable
- **THEN** la presentación retrocede o avanza cuando exista una sección correspondiente

#### Scenario: Uso táctil
- **WHEN** el usuario realiza un deslizamiento horizontal válido en la superficie de una diapositiva
- **THEN** la presentación cambia hacia el destino correspondiente

### Requirement: Footer compartido por diapositiva
Cada diapositiva SHALL mostrar el mismo footer institucional debajo de su contenido.

#### Scenario: Cambio de diapositiva
- **WHEN** el usuario navega entre cualquier par de secciones
- **THEN** el footer correspondiente a la nueva sección permanece visible en su posición inferior

### Requirement: Presentación responsive
La plantilla SHALL adaptar su contenido y controles al ancho disponible sin desbordamiento horizontal.

#### Scenario: Visualización móvil
- **WHEN** la presentación se muestra en una ventana estrecha
- **THEN** el contenido usa las reglas responsive existentes y las flechas conservan tamaño, separación y estado accesible

#### Scenario: Componentes interactivos integrados
- **WHEN** se muestra la sección de pestañas en móvil o escritorio
- **THEN** sus pestañas y paneles conservan su comportamiento sin interferencia entre grupos
