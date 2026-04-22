#!/usr/bin/env bash
# Pruebas automáticas para Variante A (conteo 2xx/4xx/5xx).
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -x ./analyzer ]]; then
  echo "[INFO] Compilando binario..."
  make
fi

echo "[TEST] Validando logs_A.txt"
output="$(cat data/logs_A.txt | ./analyzer)"
expected="$(cat <<'TXT'
=== Mini Cloud Log Analyzer ===
Éxitos 2xx: 4
Errores 4xx: 3
Errores 5xx: 3
Inválidos:   1
Éxito %:     36%
TXT
)"

if [[ "$output" == "$expected" ]]; then
  echo "[OK] logs_A.txt"
else
  echo "[FAIL] logs_A.txt"
  echo "--- Esperado ---"
  echo "$expected"
  echo "--- Obtenido ---"
  echo "$output"
  exit 1
fi

echo ""
echo "[RESULTADO] Todas las pruebas pasaron."
exit 0
