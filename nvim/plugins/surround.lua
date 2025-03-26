return {
  -- andere Plugins
  {
    "kylechui/nvim-surround",
    version = "*", -- Für die neueste Version
    event = "VeryLazy", -- Lädt das Plugin faul nach einem Event
    config = function()
      require("nvim-surround").setup({
        -- Du kannst hier zusätzliche Einstellungen vornehmen, wenn nötig
      })
    end,
  },
}
