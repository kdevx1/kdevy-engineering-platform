#!/usr/bin/env bash

set -Eeuo pipefail

ROOT_DIR="$(git rev-parse --show-toplevel 2>/dev/null)"
PROMPT_FILE="$ROOT_DIR/prompts/codex/wave-06-corrective/01-apply-delivery-review.md"
REVIEW_FILE="$ROOT_DIR/architecture/DELIVERY_FRAMEWORK_REVIEW.md"
DELIVERY_FILE="$ROOT_DIR/architecture/DELIVERY_FRAMEWORK.md"
REPORT_FILE="$ROOT_DIR/reports/codex/wave-06-corrective/01-adjustment-report.txt"

cd "$ROOT_DIR"

echo "[INFO] Repositorio: $ROOT_DIR"
echo "[INFO] Branch: $(git branch --show-current)"
echo "[INFO] HEAD: $(git rev-parse --short HEAD)"

CURRENT_BRANCH="$(git branch --show-current)"

if [[ "$CURRENT_BRANCH" != "wave/06-corrective-closure" ]]; then
    echo "[ERRO] Branch incorreta: $CURRENT_BRANCH"
    echo "[INFO] Use: git switch -c wave/06-corrective-closure"
    exit 1
fi

if ! command -v codex >/dev/null 2>&1; then
    echo "[ERRO] O comando codex nao foi encontrado."
    echo "[INFO] Verifique com: codex --version"
    exit 1
fi

if [[ ! -f "$PROMPT_FILE" ]]; then
    echo "[ERRO] Prompt nao encontrado: $PROMPT_FILE"
    exit 1
fi

if [[ ! -f "$REVIEW_FILE" ]]; then
    echo "[ERRO] Review nao encontrado: $REVIEW_FILE"
    exit 1
fi

if [[ ! -f "$DELIVERY_FILE" ]]; then
    echo "[ERRO] Delivery Framework nao encontrado: $DELIVERY_FILE"
    exit 1
fi

if ! git rev-parse -q --verify "refs/tags/wave-6-complete" >/dev/null; then
    echo "[ERRO] A tag wave-6-complete nao foi encontrada."
    exit 1
fi

mkdir -p "$(dirname "$REPORT_FILE")"

echo
echo "[INFO] Estado inicial:"
git status --short

echo
echo "[INFO] Iniciando fechamento corretivo da Wave 6..."

codex exec \
    --full-auto \
    --cd "$ROOT_DIR" \
    - < "$PROMPT_FILE" | tee "$REPORT_FILE"

echo
echo "[INFO] Estado apos execucao:"
git status --short

echo
echo "[INFO] Verificacao de whitespace:"
git diff --check

echo
echo "[INFO] Resumo das alteracoes:"
git diff --stat

echo
echo "[INFO] Confirmando que a tag original nao foi movida:"
git show-ref --tags wave-6-complete

echo
echo "[OK] Execucao concluida."
echo "[INFO] Relatorio: $REPORT_FILE"
echo "[ATENCAO] Nenhum commit ou push deve ser feito antes da revisao."
