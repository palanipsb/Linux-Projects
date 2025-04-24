#!/bin/bash
# Azure DevOps Self-Hosted Agent Setup Script
# Creates 2 unattended agents (self-hosted-01, self-hosted-02)
set -e

# Configurations
AGENT_GROUP="azureagent"
ORG_URL="https://dev.azure.com/palanipsb"
POOL_NAME="self-hosted-agent-pool"

create_group() {
    if ! getent group "$AGENT_GROUP" >/dev/null; then
        sudo groupadd "$AGENT_GROUP"
        echo "Group $AGENT_GROUP created"
    fi
}

create_user() {
    local WORK_DIR="/home/$1/agent"  # Changed to home directory
    
    if ! id "$1" >/dev/null 2>&1; then
        sudo useradd -m -g "$AGENT_GROUP" "$1"
        echo "$1 ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$1
        
        # Create directory in user's home
        sudo -u "$1" mkdir -p "$WORK_DIR"
        sudo chown -R "$1:$AGENT_GROUP" "$WORK_DIR"
    fi
}

setup_agent() {
    local AGENT_NAME=$1
    local WORK_DIR="/home/$AGENT_NAME/agent"
    
    echo "🔹 Setting up $AGENT_NAME..."
    
    # Execute ALL agent setup as the target user
    sudo -u "$AGENT_NAME" bash <<EOF
cd "$WORK_DIR"
wget https://vstsagentpackage.azureedge.net/agent/4.254.0/vsts-agent-linux-x64-4.254.0.tar.gz
tar zxvf vsts-agent-linux-x64-4.254.0.tar.gz
./config.sh --unattended \
    --url "$ORG_URL" \
    --auth pat \
    --token "$AZURE_DEVOPS_PAT" \
    --pool "$POOL_NAME" \
    --agent "$AGENT_NAME" \
    --work "_work" \
    --replace \
    --acceptTeeEula
sudo bash -c "./svc.sh install && ./svc.sh start"
EOF
}

# Main execution
for AGENT in self-hosted-01 self-hosted-02; do
    create_group
    create_user "$AGENT"
    setup_agent "$AGENT"
done

echo "Both agents are now running in pool '$POOL_NAME'"