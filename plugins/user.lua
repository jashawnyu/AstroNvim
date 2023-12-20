return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- {
  --   'vimwiki/vimwiki',
  --   event = "BufEnter *.md",
  --   keys = {"<leader>ww", "<leader>wt"},
  --   enabled = true,
  --   init = function () --replace 'config' with 'init'
  --     vim.g.vimwiki_list = {{path = '~/Notes', syntax = 'markdown', ext = '.md'}}
  --     vim.g.vimwiki_listsyms = " ◔◑◕✓"
  --     -- vim.api.nvim_set_keymap('n', '<C-]>', '<Plug>VimwikiNextLink', {silent=true})
  --     -- vim.api.nvim_set_keymap('n', '<C-[>', '<Plug>VimwikiPrevLink', {silent=true})
  --     --vim.api.nvim_set_keymap('n', '<S-Tab>', '<Plug>VimwikiDecreaseLvlWholeItem', {silent=true})
  --     --vim.api.nvim_set_keymap('n', '<Tab>', '<Plug>VimwikiIncreaseLvlWholeItem', {silent=true})
  --   end,
  -- },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- event = "VeryLazy",
    -- lazy-load on filetype
    ft = "norg", -- can run :Neorg index command at anytime
    -- options for neorg. This will automatically call `require("neorg").setup(opts)`
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.export"] = {},
        ["core.summary"] = {
          config = {
            strategy = "default",
          },
        },
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.manoeuvre"] = {}, --moving around different elements up and down
        ["core.dirman"] = {
          config = {
            workspaces = {
              work = "~/Notes",
            },
            index = "index.norg", -- The name of the main (root) .norg file
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
            --neorg_leader = "<LocalLeader>", -- default neorg mapleader is ","
          },
        },
      },
    },
  },
}
