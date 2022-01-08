local path = nil
local function find_git_ancestor(startpath)
  return search_ancestors(startpath, function(path)
    -- Support git directories and git files (worktrees)
    if path.is_dir(path.join(path, '.git')) or path.is_file(path.join(path, '.git')) then
      return path
    end
  end)
end

local function getFullPath(filepath)
 local base_path = find_git_ancestor()
 local full_path = base_path .. filepath
 print(full_path)
 return full_path
end

return {
  -- init_options = {
    settings = {
      enabled = true,
      schema = true,
      xml = {
        catalogs = {
          -- "/home/exequiel/projects/summa/cetrogar-mariadb-m2/.nvim/urn-catalog.xml"
          "/home/exequiel/projects/summa/cetrogar-mariadb-m2/.idea/vscode.xml",
          "/home/exequiel/projects/summa/cetrogar-m2/.nvim-conf/vscode.xml",
          -- ".nvim/urn-catalog.xml"
          -- getFullPath(".nvim/vscode.xml")
        }
      }
    },
  -- }
}
