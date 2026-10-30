# Plantillas Brightspace Universidad Mayor

Repositorio de plantillas HTML adaptables para el diseño de cursos en
Brightspace. Las plantillas usan la identidad visual de Universidad Mayor y
recursos institucionales compartidos.

## Vista previa

Abre `index.html` desde un servidor local para consultar todas las plantillas.
Por ejemplo, desde PowerShell en la raíz del repositorio:

```powershell
python -m http.server 4173
```

Luego visita `http://localhost:4173/index.html`.

## Plantillas disponibles

- Plantillas numeradas de `00_blank.html` a `10_tabs.html`.
- Variantes `2027_*` de las plantillas principales.
- `slides.html`, una plantilla monolítica que reúne introducción, contenido,
  pestañas, conclusión y facilitador sin usar `iframe`.
- Ejemplos adicionales de acordeones, pestañas y pestañas por pasos.

Cada enlace del catálogo abre su plantilla correspondiente.

## Presentación integrada

La plantilla `slides.html` permite recorrer las cinco secciones mediante:

- Flechas laterales.
- Teclas de flecha izquierda y derecha.
- Deslizamiento horizontal en dispositivos táctiles.
- Estado de la diapositiva en el hash de la URL.

Las flechas quedan ocultas en el primer y último extremo del recorrido. Las
secciones compartidas cuentan con IDs únicos para evitar conflictos entre
pestañas y hashes.

## Diseño

- Azul institucional: `#233a83`.
- Amarillo institucional: `#ffcf02`.
- Tipografía Roboto con Arial como respaldo.
- Diseño responsive para escritorio y dispositivos móviles.
- Contenido preparado para Brightspace sin marcos anidados.

Los recursos compartidos se cargan desde la biblioteca institucional de
Brightspace. No es necesario publicar archivos de terceros junto con las
plantillas.

## Desarrollo local

Instala las dependencias locales con:

```powershell
npm install
```

Comprueba la versión incluida de OpenSpec:

```powershell
npm.cmd run openspec -- --version
```

## OpenSpec

La carpeta `openspec/` contiene propuestas, especificaciones, diseños y tareas
de cambios del proyecto. Los flujos de Copilot están disponibles en `.github/`.

- Crear una propuesta: `/opsx-propose`.
- Aplicar una propuesta: `/opsx-apply`.
- Verificar una propuesta cuando esté configurado el flujo correspondiente:
  `/opsx-verify`.

## Engram

Este repositorio puede usar Engram para conservar memoria local del proyecto.
Para instalar el binario local:

```powershell
npm run engram:install
```

Después, abre o vuelve a cargar la carpeta en VS Code para cargar la
configuración MCP existente.

Los directorios locales de dependencias y datos no deben incluirse en el
repositorio:

- `node_modules/`
- `.tools/engram/`
- `.local/engram/`
