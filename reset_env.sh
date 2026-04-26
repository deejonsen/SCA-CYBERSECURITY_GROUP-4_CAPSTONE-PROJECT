#!/bin/bash
# ============================================
# Reset Fedora VM Environment for IAM Audit
# ============================================

echo "Stopping FreeIPA services..."
sudo systemctl stop ipa || true
sudo systemctl stop dirsrv@$(hostname -s) || true
sudo systemctl stop pki-tomcatd@pki-tomcat || true

echo "Removing FreeIPA packages..."
sudo dnf remove freeipa-server freeipa-server-dns -y

echo "Cleaning residual configuration..."
sudo rm -rf /etc/ipa /var/lib/ipa /var/log/ipa*

echo "Reinstalling FreeIPA packages..."
sudo dnf install freeipa-server freeipa-server-dns -y

echo "Reset complete. Run 'ipa-server-install' to configure a fresh environment."
