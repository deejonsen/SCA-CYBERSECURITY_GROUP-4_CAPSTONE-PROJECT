#!/bin/bash
# ============================================
# FreeIPA Setup Script for Fedora VM
# Capstone Project: Password Security + IAM Audit
# ============================================

# Update system packages
echo "Updating Fedora packages..."
sudo dnf update -y

# Install FreeIPA server and DNS packages
echo "Installing FreeIPA server..."
sudo dnf install freeipa-server freeipa-server-dns -y

# Enable and start required services
echo "Enabling IPA services..."
sudo systemctl enable ipa
sudo systemctl start ipa

# Run FreeIPA interactive installer
echo "Starting FreeIPA server installation..."
sudo ipa-server-install --setup-dns --allow-zone-overlap

# Verify services
echo "Checking FreeIPA services..."
sudo systemctl status ipa
sudo systemctl status dirsrv@$(hostname -s)
sudo systemctl status pki-tomcatd@pki-tomcat

# Add a sample user for testing
echo "Adding test user 'dorcas'..."
ipa user-add dorcas --first=Dorcas --last=Johnson --password

# Show password policy
echo "Displaying current password policy..."
ipa pwpolicy-show

# Add stronger password policy
echo "Applying stronger password policy..."
ipa pwpolicy-add --minlength=12 --minclasses=3 --maxfail=5 --lockouttime=600

# Create OTP token for admin
echo "Creating OTP token for admin..."
ipa otptoken-add admin

echo "Setup complete! Please run 'kinit admin' to test login with password + OTP."
