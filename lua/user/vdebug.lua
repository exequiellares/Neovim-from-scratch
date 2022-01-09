local utils_status_ok, utils = pcall(require, "local-utils")
if not utils_status_ok then
	return
end

-- Map Magento directories

local path_maps = "{'/var/www/html': '" .. utils.get_full_path('') .. "', '/var/www/html/pub': '" .. utils.get_full_path('/pub') .. "'}"
local config_path_maps = "let g:vdebug_options['path_maps'] = " .. path_maps


vim.g.vdebug_options = {
  port= 9000,
  watch_window_style = "compact"
}

vim.cmd(config_path_maps)

-- vim.g.vdebug_options = {}
    -- \    'port' : 9000,
    -- \    'timeout' : 20,
    -- \    'server' : '',
    -- \    'on_close' : 'stop',
    -- \    'break_on_open' : 1,
    -- \    'ide_key' : '',
    -- \    'debug_window_level' : 0,
    -- \    'debug_file_level' : 0,
    -- \    'debug_file' : '',
    -- \    'path_maps' : {},
    -- \    'watch_window_style' : 'expanded',
    -- \    'marker_default' : '⬦',
    -- \    'marker_closed_tree' : '▸',
    -- \    'marker_open_tree' : '▾',
    -- \    'sign_breakpoint' : '▷',
    -- \    'sign_current' : '▶',
    -- \    'continuous_mode'  : 1,
    -- \    'simplified_status': 1,
    -- \    'layout': 'vertical',
    -- \}
