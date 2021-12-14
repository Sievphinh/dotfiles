if !exists('g:loaded_cmp') | finish | endif

set completeopt=menuone,noinsert,noselect

lua <<EOF
  local cmp = require'cmp'
  local lspkind = require'lspkind'  
  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
      },

    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        }),
      },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    }),
   formatting = {
     format = lspkind.cmp_format({with_text = false, maxWidth = 50})
     }

  })

  vim.cmd [[highlight! CmpItemKindMethod guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindVariable guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindText guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindFunction guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindKeyword guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindField guibg=NONE guifg=NONE]]

   vim.cmd [[highlight! CmpItemKindClass guibg=NONE guifg=NONE]]

   vim.cmd [[highlight! CmpItemKindConstructor guibg=NONE guifg=NONE]]

   vim.cmd [[highlight! CmpItemKindInterface guibg=NONE guifg=NONE]]

   vim.cmd [[highlight! CmpItemKindColor guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindModule guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindProperty guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindValue guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindEnum guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindFile guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindReference guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindFolder guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindEnumMember guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindConstant guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindStruct guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindEvent guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindTypeParameter guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindSnippet guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindUnit guibg=NONE guifg=NONE]]

  vim.cmd [[highlight! CmpItemKindOperator guibg=NONE guifg=NONE]]


EOF
