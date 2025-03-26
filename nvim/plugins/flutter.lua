return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
    opts = {
      ui = {
        notification_style = "plugin",
      },
      debugger = {
        enabled = true,
        run_via_dap = true,
        register_configurations = function(_)
          require("dap").configurations.dart = {
            {
              name = "Attach",
              type = "dart",
              request = "attach",
            },
          }
          require("dap.ext.vscode").load_launchjs()
        end,
      },
      dev_tools = {
        auto_open_browser = true,
      },
      fvm = true,
      lsp = {
        color = {
          enabled = true,
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>F", desc = "Flutter" },
      { "<leader>Fc", ":FlutterCopyProfilerUrl<cr>", desc = "Copy Profile Url" },
      { "<leader>Fd", ":FlutterDevices<cr>", desc = "Devices" },
      { "<leader>Fa", ":lua require('dap').continue()", desc = "Attach Debug" },
      { "<leader>FD", ":FlutterDevTools<cr>", desc = "Dev Tools" },
      { "<leader>Fe", ":FlutterEmulators<cr>", desc = "Emulators" },
      { "<leader>Fh", ":FlutterReload<cr>", desc = "Reload" },
      { "<leader>FH", ":FlutterRestart<cr>", desc = "Restart" },
      { "<leader>Fl", ":FlutterLogClear<cr>", desc = "Log Clear" },
      { "<leader>Fo", ":FlutterOutlineToggle<cr>", desc = "Outline" },
      { "<leader>Fp", ":FlutterPubGet<cr>", desc = "Pub Get" },
      { "<leader>Fq", ":FlutterQuit<cr>", desc = "Quit" },
      { "<leader>Frd", ":FlutterRun --flavor development --target lib/main_development.dart<cr>", desc = "Run Dev" },
      { "<leader>Frr", ":FlutterRun<cr>", desc = "Run" },
      { "<leader>Fv", ":FlutterVisualDebug<cr>", desc = "Visual Debug" },
    },
  },
}
