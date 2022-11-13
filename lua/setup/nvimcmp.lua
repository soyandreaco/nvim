
local lsp_symbols = {
    Text = "   (Text) ",
    Method = "   (Method)",
    Function = "   (Function)",
    Constructor = "   (Constructor)",
    Field = " ﴲ  (Field)",
    Variable = "[] (Variable)",
    Class = "   (Class)",
    Interface = " ﰮ  (Interface)",
    Module = "   (Module)",
    Property = " 襁 (Property)",
    Unit = "   (Unit)",
    Value = "   (Value)",
    Enum = " 練 (Enum)",
    Keyword = "   (Keyword)",
    Snippet = "   (Snippet)",
    Color = "   (Color)",
    File = "   (File)",
    Reference = "   (Reference)",
    Folder = "   (Folder)",
    EnumMember = "   (EnumMember)",
    Constant = " ﲀ  (Constant)",
    Struct = " ﳤ  (Struct)",
    Event = "   (Event)",
    Operator = "   (Operator)",
    TypeParameter = "   (TypeParameter)"
}

-- Setup nvim-cmp.
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
		-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
	  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 
	  -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
       sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'path' },
	{ name = 'buffer', keyword_lenght = 4 },
	  -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
	}),
    -- documentation = "native",
    preselect = true,
    completion = {completeopt = 'menu,menuone,noinsert'},
    formatting = {
        format = function(entry, item)
        item.kind = lsp_symbols[item.kind] .. " " .. item.kind
            -- set a name for each source
            item.menu = ({
                spell = "[Spell]",
                buffer = "[Buffer]",
                calc = "[Calc]",
                emoji = "[Emoji]",
                nvim_lsp = "[LSP]",
                path = "[Path]",
                look = "[Look]",
                treesitter = "[treesitter]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })[entry.source.name]
            return item
        end
    },
    -- autopairs
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
    auto_select = true, -- automatically select the first item
    insert = false, -- use insert confirm behavior instead of replace
    map_char = { -- modifies the function or method delimiter by filetypes
        all = '(',
        tex = '{'
    }
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- LSP Diagnostics
  vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {texthl = "LspDiagnosticsSignError", text = " ", numhl = "LspDiagnosticsSignError"}
  )
  vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {texthl = "LspDiagnosticsSignWarning", text = " ", numhl = "LspDiagnosticsSignWarning"}
  )
  vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
  )
  vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
  )

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['cssmodules_ls'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['emmet_ls'].setup {
    capabilities = capabilities,
  }
   
  require('lspconfig')['tailwindcss'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['vimls'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['pylsp'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['slint_lsp'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['cssls'].setup {
    capabilities = capabilities,
  }
 
  require('lspconfig')['eslint'].setup {
    capabilities = capabilities,
  }
 
  require('lspconfig')['quick_lint_js'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['html'].setup {
    capabilities = capabilities,
  }
 
  require('lspconfig')['graphql'].setup {
    capabilities = capabilities,
  }
 
  require('lspconfig')['jedi_language_server'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['jsonls'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['pyright'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['sqlls'].setup {
    capabilities = capabilities,
  }

  require('lspconfig')['sqls'].setup {
    capabilities = capabilities,
  }

