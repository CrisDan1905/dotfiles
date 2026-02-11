local cmp = require "cmp"

return {
  preselect = cmp.PreselectMode.None,
  completion = { completeopt = "menu,menuone,noinsert,noselect" },

  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false })
  }
}


