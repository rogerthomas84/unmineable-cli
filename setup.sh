#!/usr/bin/env sh

echo ""
echo "-----------------------------------------"
echo "|  Unmineable CLI for Mac installation  |"
echo "-----------------------------------------"
echo ""

DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "${DIRECTORY}" || exit

echo " * Copying unmineable-cli..."
cp -f "${DIRECTORY}/unmineable-cli" /usr/local/bin/unmineable-cli
echo " * Making executable..."
chmod +x /usr/local/bin/unmineable-cli

echo ""
echo "Install complete"
exit 0
