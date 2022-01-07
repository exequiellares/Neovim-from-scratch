vim.g.vdebug_options = {
  port= 9000,
  watch_window_style = "compact",
--  path_maps = nil
  --     "/var/www/html" = "/home/exequiel/projects/summa/cetrogar-mariadb-m2",
  --     "/var/www/html/pub" = "/home/exequiel/projects/summa/cetrogar-mariadb-m2/pub",
  -- },
}

vim.cmd [[
  let g:vdebug_options['path_maps'] = {
    \ '/var/www/html': '/home/exequiel/projects/summa/cetrogar-m2',
    \ '/var/www/html/pub': '/home/exequiel/projects/summa/cetrogar-m2/pub'
  \}
]]
-- vim.g.vdebug_options["path_maps"]["/var/www/html/"] = "/home/exequiel/projects/summa/cetrogar-mariadb-m2"
-- print(vim.g.vdebug_options)
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
