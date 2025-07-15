#!/bin/bash
set -e

echo "🔄 Clonando OpenWrt 18.06..."

if [ ! -d "openwrt" ]; then
  git clone https://github.com/openwrt/openwrt.git -b openwrt-18.06 openwrt
fi

cd openwrt

echo "📦 Escrevendo feeds.conf com repositórios do GitHub..."
cat > feeds.conf <<EOL
src-git packages https://github.com/openwrt/packages.git;openwrt-18.06
src-git luci https://github.com/openwrt/luci.git;openwrt-18.06
src-git routing https://github.com/openwrt-routing/packages.git;openwrt-18.06
src-git telephony https://github.com/openwrt/telephony.git;openwrt-18.06
EOL

echo "📥 Atualizando e instalando feeds..."
./scripts/feeds update -a
./scripts/feeds install -a
