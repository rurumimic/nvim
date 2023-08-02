local plugins = {}

-- table.insert(plugins, require("custom.modules.colorscheme"))
table.insert(plugins, require("custom.modules.git"))
table.insert(plugins, require("custom.modules.lsp"))
table.insert(plugins, require("custom.modules.ux"))

return plugins
