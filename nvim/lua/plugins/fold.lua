return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  event = "UIEnter",
  init = function()
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
  end,
  opts = {
    close_fold_kinds_for_ft = {
      c = { "function_definition" },
      cpp = { "function_definition" },
      javascript = { "jsx_element", "function_definition" },
      json = { "array" },
      typescript = { "jsx_element", "function_declaration", "function_definition" },
      typescriptreact = { "jsx_element", "function_declaration", "function_definition" },
    },
    provider_selector = function(bufnr, filetype, buftype)
      return { "treesitter", "indent" }
    end,
  },
}
