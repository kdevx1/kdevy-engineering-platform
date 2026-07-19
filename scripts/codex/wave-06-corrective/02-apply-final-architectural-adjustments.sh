#!/usr/bin/env bash

set -Eeuo pipefail

ROOT_DIR="$(git rev-parse --show-toplevel 2>/dev/null)"
PROMPT_FILE="$ROOT_DIR/prompts/codex/wave-06-corrective/02-apply-final-architectural-adjustments.md"
REPORT_FILE="$ROOT_DIR/reports/codex/wave-06-corrective/02-final-adjustment-report.txt"
EXPECTED_BRANCH="wave/06-corrective-closure"

cd "$ROOT_DIR"

CURRENT_BRANCH="$(git branch --show-current)"

if [[ "$CURRENT_BRANCH" != "$EXPECTED_BRANCH" ]]; then
    echo "[ERRO] Branch atual: $CURRENT_BRANCH"
    echo "[INFO] Branch esperada: $EXPECTED_BRANCH"
    exit 1
fi

if ! command -v codex >/dev/null 2>&1; then
    echo "[ERRO] Comando codex nao encontrado."
    exit 1
fi

if [[ ! -f "$PROMPT_FILE" ]]; then
    echo "[ERRO] Prompt nao encontrado: $PROMPT_FILE"
    exit 1
fi

if [[ ! -f architecture/DELIVERY_FRAMEWORK.md ]]; then
    echo "[ERRO] DELIVERY_FRAMEWORK.md nao encontrado."
    exit 1
fi

if [[ ! -f architecture/DELIVERY_FRAMEWORK_REVIEW.md ]]; then
    echo "[ERRO] DELIVERY_FRAMEWORK_REVIEW.md nao encontrado."
    exit 1
fi

mkdir -p "$(dirname "$REPORT_FILE")"

HEAD_BEFORE="$(git rev-parse HEAD)"
TAG_BEFORE="$(git rev-list -n 1 wave-6-complete)"

echo "[INFO] Branch: $CURRENT_BRANCH"
echo "[INFO] HEAD inicial: $HEAD_BEFORE"
echo "[INFO] Tag wave-6-complete: $TAG_BEFORE"

codex exec \
    --full-auto \
    --cd "$ROOT_DIR" \
    - < "$PROMPT_FILE" | tee "$REPORT_FILE"

HEAD_AFTER="$(git rev-parse HEAD)"
TAG_AFTER="$(git rev-list -n 1 wave-6-complete)"

if [[ "$HEAD_BEFORE" != "$HEAD_AFTER" ]]; then
    echo "[ERRO] O HEAD foi alterado durante a execucao."
    exit 1
fi

if [[ "$TAG_BEFORE" != "$TAG_AFTER" ]]; then
    echo "[ERRO] A tag wave-6-complete foi alterada."
    exit 1
fi

echo
echo "[INFO] Verificacao de whitespace:"
git diff --check

echo
echo "[INFO] Arquivos modificados:"
git status --short

echo
echo "[INFO] Resumo:"
git diff --stat

echo
echo "[INFO] Verificando criacao indevida de modelos:"
find . -type f \( \
    -iname '*ENGINEERING_ENTITY_MODEL*' -o \
    -iname '*LIFECYCLE_MODEL*' -o \
    -iname '*TRACEABILITY_MODEL*' -o \
    -iname '*WORKFLOW_MODEL*' \
\) -print

echo
echo "[OK] Ajustes finais executados sem commit ou alteracao de tag."
