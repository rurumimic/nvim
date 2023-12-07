local plugins = {}

-- table.insert(plugins, require("custom.modules.colorscheme"))
table.insert(plugins, require("custom.modules.git"))
table.insert(plugins, require("custom.modules.lsp"))
table.insert(plugins, require("custom.modules.ux"))
table.insert(plugins, require("custom.modules.clipboard"))
table.insert(plugins, require("custom.modules.copilot"))

return plugins
