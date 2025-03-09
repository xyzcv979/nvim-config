return {
  {
    "hrsh7th/nvim-cmp", -- nvim-cmp plugin
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        enabled = function()
          local context = require("cmp.config.context")
          if vim.api.nvim_get_mode().mode == "c" then
            return true
          else
            return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
          end
        end,

        -- Additional setup options
        snippet = {
          expand = function(args)
            -- snippet expansion logic
          end,
        },

        sources = {
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "path" },
          { name = "buffer" },
        },
      })
    end,
  },
}
