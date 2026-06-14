return {
  "cpea2506/one_monokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("one_monokai").setup({
      transparent = true,
      italic_comments = true,
    })

    -- set the colorscheme
    vim.cmd.colorscheme("one_monokai")

    -- transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
