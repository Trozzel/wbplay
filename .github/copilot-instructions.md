# GitHub Copilot Instructions

This repository is configured to work with GitHub Copilot in Neovim.

## Setup for Upgraded Account

If you have an upgraded GitHub Copilot account (Pro or Enterprise), follow these steps to ensure Neovim can recognize your account:

### 1. Authenticate Copilot in Neovim

1. Open Neovim
2. Run `:Copilot auth` to authenticate
3. Follow the browser authentication flow
4. Ensure you're logged in with the account that has the upgraded subscription

### 2. Verify Authentication Status

```vim
:Copilot status
```

This should show your account status and verify that your upgraded features are available.

### 3. Refresh Authentication (if needed)

If Neovim doesn't recognize your upgraded account:

```vim
:Copilot signout
:Copilot auth
```

### 4. Check Node.js Version

GitHub Copilot requires Node.js 18 or higher:

```bash
node --version
```

If your Node.js version is outdated, update it and restart Neovim.

## Troubleshooting

### Clear Copilot Cache

If you're still experiencing issues:

```bash
rm -rf ~/.config/github-copilot
```

Then restart Neovim and run `:Copilot auth` again.

### Check Copilot Plugin Installation

Ensure you have the Copilot plugin installed. For common plugin managers:

**vim-plug:**
```vim
Plug 'github/copilot.vim'
```

**packer.nvim:**
```lua
use 'github/copilot.vim'
```

**lazy.nvim:**
```lua
{ 'github/copilot.vim' }
```

After adding the plugin, run the appropriate installation command for your plugin manager.

## Repository-Specific Settings

This repository benefits from Copilot suggestions for:
- HTML/CSS/JavaScript development
- Web-based programming templates
- Front-end component reuse patterns

Copilot will provide context-aware suggestions based on the project structure and existing code patterns.
