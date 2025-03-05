#!/bin/bash

# 定义扩展 UUID 数组
EXTENSION_UUIDS=(
  "user-theme@gnome-shell-extensions.gcampax.github.com"
  "hidetopbar@mathieu.bidon.ca"
  "blur-my-shell@aunetx"
  "gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com"
  "clipboard-indicator@tudmotu.com"
  "appindicatorsupport@rgcjonas.gmail.com"
  "system-monitor@gnome-shell-extensions.gcampax.github.com"
  "drive-menu@gnome-shell-extensions.gcampax.github.com"
  "caffeine@patapon.info"
  "compiz-windows-effect@hermes83.github.com"
  "compiz-alike-magic-lamp-effect@hermes83.github.com"
  "aztaskbar@aztaskbar.gitlab.com"
)

# 定义扩展版本号数组（与 UUID 数组一一对应）
EXTENSION_VERSIONS=(
  "27"  # aztaskbar
  "59"  # appindicatorsupport
  "67"  # blur-my-shell
  "56"  # caffeine
  "66"  # clipboard-indicator
  "64"  # drive-menu
  "20"  # compiz-alike-magic-lamp-effect
  "25"  # compiz-windows-effecet
  "25"  # gnom-fuzzy-app-search
  "118" # hidetopbar
  "64"  # drive-menu
  "6"   # system-monitor
)

# 检查数组长度是否一致
if [[ ${#EXTENSION_UUIDS[@]} -ne ${#EXTENSION_VERSIONS[@]} ]]; then
  echo "ERROR: versions and UUIDs are no equal"
  exit 1
fi

# 循环安装和启用扩展
for i in "${!EXTENSION_UUIDS[@]}"; do
  EXTENSION_UUID="${EXTENSION_UUIDS[$i]}"
  EXTENSION_VERSION="${EXTENSION_VERSIONS[$i]}"

  # 将 UUID 中的 @ 和 . 去掉，生成下载链接
  DOWNLOAD_UUID=$(echo "${EXTENSION_UUID}" | tr -d '@.')
  DOWNLOAD_URL="https://extensions.gnome.org/extension-data/${DOWNLOAD_UUID}.v${EXTENSION_VERSION}.shell-extension.zip"
  echo "Download link: ${DOWNLOAD_URL}"

  # 下载扩展文件
  curl -L "${DOWNLOAD_URL}" -o /tmp/extension.zip

  # 检查下载是否成功
  if [[ $? -ne 0 ]]; then
    echo "Download ${EXTENSION_UUID} failed"
    continue
  fi

  # 安装扩展
  gnome-extensions install /tmp/extension.zip

  # 启用扩展
  gnome-extensions enable "${EXTENSION_UUID}"

  echo "${EXTENSION_UUID} enabled"
done

echo "All extensions installed"
