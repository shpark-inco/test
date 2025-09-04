#!/usr/bin/env bash

# Install AWS CLI (Q CLI가 사용함)
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

# Install Q CLI
curl -Lo q https://github.com/aws/q-cli/releases/latest/download/q-linux-x64
chmod +x q
sudo mv q /usr/local/bin/

# 사용자 안내
echo "=== Q CLI Setup Complete ==="
echo "To use Q CLI:"
echo "1. Run: aws configure"
echo "2. Enter your AWS credentials"
echo "3. Use: q chat"
echo "=========================="
