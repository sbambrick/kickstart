return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    sync_install = true,
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "diff",
      "html",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "typescript",
      "vim",
      "vimdoc",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = { enable = true, disable = { "ruby" } },
  },
  config = function(_, opts)
    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup(opts)
  end,
}
