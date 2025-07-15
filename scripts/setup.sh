#!/bin/bash
set -e

echo "📥 Atualizando e instalando feeds..."
./scripts/feeds update -a
./scripts/feeds install -a
