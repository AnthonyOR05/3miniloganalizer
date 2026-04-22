[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/XOwgVRqR)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=23653233)


# Práctica 4.2

## Implementación de un Mini Cloud Log Analyzer en ARM64

**Modalidad:** Individual

**Entorno de trabajo:** AWS Ubuntu ARM64 + GitHub Classroom

**Lenguaje:** ARM64 Assembly (GNU Assembler) + Bash + GNU Make

**Alumno:** Ordoñez Marrufo Anthony - 23212033

---

## Introducción

Los sistemas modernos de cómputo en la nube generan continuamente registros (*logs*) que permiten monitorear el estado de servicios, detectar fallas y activar alertas ante eventos críticos.

En esta práctica se desarrollará un módulo simplificado de análisis de logs, implementado en **ARM64 Assembly**, inspirado en tareas reales de monitoreo utilizadas en sistemas cloud, observabilidad y administración de infraestructura.

El programa procesará códigos de estado HTTP suministrados mediante entrada estándar (stdin):

```bash id="y1gcmc"
cat logs.txt | ./analyzer
```

---

## Descripción
Programa en ARM64 Assembly que analiza códigos HTTP desde stdin y cuenta:

- Respuestas exitosas (2xx)
- Errores del cliente (4xx)
- Errores del servidor (5xx)

## Uso

Compilar:
make

Ejecutar:
cat data/logs.txt | ./analyzer

Pruebas:
make test

## Lógica

1. Leer datos desde stdin
2. Parsear números
3. Clasificar por categoría HTTP
4. Mostrar resultados

## Tecnologías

- ARM64 Assembly (GNU Assembler)
- Bash
- GNU Make
