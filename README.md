# Versionado de infraestructura del servicio de notificaciones con Terraform

El servicio de notificaciones es un componente crítico en nuestro ecosistema de microservicios. Necesitamos versionar su infraestructura usando Terraform e integrar escaneo de dependencias y de imágenes en el pipeline para asegurar la seguridad y la integridad de la cadena de despliegue.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo y seguridad de la cadena |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 1 semana |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y generará un ZIP listo para usar.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y generará un archivo ZIP descargable. Descárgalo y extráelo en la carpeta donde quieras trabajar.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no genera el ZIP automáticamente al terminar el análisis, escríbele: "genera el ZIP ahora".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Definición del estado actual de la infraestructura

**Objetivo:** Identificar y documentar el estado actual de la infraestructura del servicio de notificaciones.

**Tiempo estimado:** 1 día

**Instrucciones:**

- Enumera todos los componentes de la infraestructura del servicio de notificaciones.
- Documenta las configuraciones actuales de cada componente.

**Entregable:** Documento que describe el estado actual de la infraestructura del servicio de notificaciones.

<details>
<summary>Pistas de conocimiento</summary>

- Revisa los documentos de arquitectura y los registros de cambios para identificar todos los componentes.
- Utiliza herramientas de descubrimiento de infraestructura para obtener información detallada.

</details>

### Fase 2: Creación del código Terraform para la infraestructura

**Objetivo:** Crear el código Terraform necesario para versionar la infraestructura del servicio de notificaciones.

**Tiempo estimado:** 3 días

**Instrucciones:**

- Crea los archivos Terraform para cada componente de la infraestructura.
- Asegúrate de que el código Terraform refleje el estado actual documentado en la fase anterior.

**Entregable:** Código Terraform que versiona la infraestructura del servicio de notificaciones.

<details>
<summary>Pistas de conocimiento</summary>

- Utiliza recursos Terraform para cada componente de la infraestructura.
- Aplica principios de modularidad y reutilización en tu código Terraform.

</details>

### Fase 3: Integración de escaneo de dependencias y de imágenes en el pipeline

**Objetivo:** Integrar herramientas de escaneo de dependencias y de imágenes en el pipeline de despliegue del servicio de notificaciones.

**Tiempo estimado:** 2 días

**Instrucciones:**

- Identifica herramientas adecuadas para escanear dependencias y imágenes.
- Integra estas herramientas en el pipeline de despliegue.

**Entregable:** Pipeline de despliegue que incluye escaneo de dependencias y de imágenes.

<details>
<summary>Pistas de conocimiento</summary>

- Investiga herramientas populares para escanear dependencias y imágenes.
- Asegura que el pipeline falle si se detectan vulnerabilidades críticas.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es la infraestructura como código y por qué es importante?
- **paraQueSirve**: ¿Para qué sirve integrar escaneo de dependencias y de imágenes en el pipeline?
- **comoSeUsa**: ¿Cómo se utiliza Terraform para versionar la infraestructura?
- **erroresComunes**: ¿Cuáles son los errores comunes al integrar herramientas de escaneo en el pipeline y cómo se pueden evitar?
- **queDecisionesImplica**: ¿Qué decisiones implica el versionado de la infraestructura y la integración de herramientas de escaneo?

## Criterios de Evaluacion

- Documentación clara y completa del estado actual de la infraestructura.
- Código Terraform que versiona correctamente la infraestructura del servicio de notificaciones.
- Pipeline de despliegue que incluye escaneo de dependencias y de imágenes y falla si se detectan vulnerabilidades críticas.

## Como trabajar con un asistente de IA

Hay dos caminos, elegi uno:

- **AGENTS.md** (recomendado) — instrucciones nativas del repo. Abri esta carpeta con tu agente local (Claude Code, Cursor, Codex, Copilot, Gemini) y las carga solo. Sabe que archivos faltan y con que comando se verifica, y completa el scaffold escribiendo en disco.
- **PROMPT_MEJORA.md** — para copiar y pegar en un chat (claude.ai, ChatGPT). Devuelve un ZIP con el proyecto. Sirve si no tenes un agente en el IDE.

Ninguno de los dos resuelve las fases del reto: eso es tu trabajo.

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
docker build -t reto:local . && terraform -chdir=terraform init -backend=false && terraform -chdir=terraform validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
