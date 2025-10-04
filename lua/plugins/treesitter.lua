return {
  'nvim-treesitter/nvim-treesitter',
  opts = {
    ensure_installed = {
      "terraform",
      "python",
      "hocon"
    },
    highlight = {
      enable = true,
    }
  }
}
