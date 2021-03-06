local status, lspkind = pcall(require, "lspkind")
if(not status) then return end

lspkind.init({
  -- enable text annotations
  --
  -- default: true
  with_text = false,
  -- default symbol map
  -- can be either 'default' (require nerd-fonts font) or
  -- 'codicons' for codicon preset (require vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
     Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = ""
    },
  })
