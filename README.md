# Homebrew Tools

Private Homebrew tap for santi1s tools.

## Installation

```bash
# Add the tap
brew tap santi1s/tools https://github.com/santi1s/homebrew-tools

# Install yak CLI
brew install yak

# Install yak GUI
brew install yak-gui

# Or install both
brew install yak yak-gui
```

## Tools

### yak
CLI tool for ArgoCD, Rollouts, and Vault secrets management.

**Features:**
- ArgoCD application management
- Argo Rollouts operations
- Vault secrets management
- JWT token generation

### yak-gui
Desktop GUI for the yak CLI tool built with Wails v2.

**Features:**
- Modern React-based interface
- ArgoCD dashboard with real-time status
- Rollouts management with container image tracking
- Secrets browser with file explorer navigation
- JWT client/server secret wizards

## Usage

```bash
# CLI usage
yak argocd status
yak rollouts list
yak secret list

# GUI usage
yak-gui
# Or launch from Applications folder
```

## Container Usage

```bash
# Pull from GitHub Container Registry
docker pull ghcr.io/santi1s/yak:latest

# Run CLI in container
docker run --rm ghcr.io/santi1s/yak:latest --help
```

## Updating

```bash
# Update formulas
brew update

# Upgrade tools
brew upgrade yak yak-gui
```