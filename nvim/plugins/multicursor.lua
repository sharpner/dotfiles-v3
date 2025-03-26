return {
  {
    "terryma/vim-multiple-cursors",
    lazy = false, -- Falls du das Plugin sofort laden möchtest, sobald Neovim startet
    config = function()
      -- Hier kannst du zusätzliche Konfigurationen für das Plugin vornehmen
      -- Beispiel: Remap-Tasten für multiple cursors
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- Füge neue Cursors mit Strg + n hinzu
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "<C-A>", -- Selektiere alle gleichen Wörter
        ["Skip Region"] = "<C-x>", -- Überspringe Region mit Strg + x
      }
    end,
  },
}
