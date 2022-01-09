local lspconfig_util_status_ok, util = pcall(require, "lspconfig.util")
if not lspconfig_util_status_ok then
	return 
end

local M = {}

M.get_full_path = function(relative_path)
  local get_root_dir = util.find_git_ancestor
  local bufnr = vim.api.nvim_get_current_buf()
  local bufname = vim.api.nvim_buf_get_name(bufnr)
  local root_dir = get_root_dir(util.path.sanitize(bufname), bufnr)
  if root_dir then
   return root_dir .. relative_path
  end
  return relative_path
end

return M
