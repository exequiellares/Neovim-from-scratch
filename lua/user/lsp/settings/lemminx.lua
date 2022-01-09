local utils_status_ok, utils = pcall(require, "local-utils")
if not utils_status_ok then
	return
end

local catalog_path =  utils.get_full_path("/.nvim-conf/vscode.xml")

return {
  settings = {
    enabled = true,
    schema = true,
    xml = {
      catalogs = {
        catalog_path
      }
    }
  },
}
