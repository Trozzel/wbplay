-- GitHub Copilot configuration for Neovim
-- This file can be sourced in your Neovim config for this project

-- Copilot settings for this repository
vim.g.copilot_enabled = true
vim.g.copilot_no_tab_map = false
vim.g.copilot_assume_mapped = false

-- File types to enable Copilot for this project
vim.g.copilot_filetypes = {
  ["*"] = true,
  html = true,
  css = true,
  javascript = true,
  markdown = true,
}

-- Workspace folders for Copilot context
vim.g.copilot_workspace_folders = {
  vim.fn.getcwd()
}

-- Node.js path (use system Node.js)
-- vim.g.copilot_node_command = "node"

-- Authentication status check function
local function check_copilot_status()
  vim.cmd("Copilot status")
end

-- Command to check Copilot status
vim.api.nvim_create_user_command("CheckCopilot", check_copilot_status, {})

-- Print message about upgraded account
print("GitHub Copilot configured for wbplay repository")
print("Run :Copilot auth if you have an upgraded account")
