# Plantillas Brightspace

Proyecto de plantillas HTML con OpenSpec y Engram configurados para trabajar de
forma local en esta carpeta.

## Preparacion

1. Instala las dependencias del proyecto con `npm install`. OpenSpec queda
   instalado en `node_modules`, sin instalacion global.
2. Instala Engram con `npm run engram:install`. El script descarga la version
   oficial fijada, verifica su SHA-256 y guarda el ejecutable en `.tools/engram`.
3. Abre o vuelve a cargar esta carpeta en VS Code para iniciar el servidor MCP
   Engram configurado en `.vscode/mcp.json`.

No se requiere Go. Para verificar OpenSpec en PowerShell ejecuta
`npm.cmd run openspec -- --version`.

## OpenSpec

Los cambios, especificaciones y flujos para GitHub Copilot se guardan en
`openspec/` y `.github/`. Inicia un cambio con el flujo de OpenSpec
`/opsx-propose` y aplica sus tareas con `/opsx-apply`. El flujo opcional
`/opsx-verify` se puede agregar desde `openspec config profile`.

## Engram

El servidor MCP se ejecuta con el binario local y guarda su base de datos en
`.local/engram/`, separado de la memoria global de Engram y de otros proyectos.
`.engram/config.json` fija el nombre del proyecto para sus memorias. Confirma la
conexión de Engram en la lista de herramientas MCP de VS Code tras recargar la
carpeta.

Los directorios `node_modules/`, `.tools/engram/` y `.local/engram/` son locales
y están excluidos de Git.
