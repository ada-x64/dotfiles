vim.g.markdown_fenced_languages = {
    "ts=typescript"
}
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "codelldb",
          "rust-analyzer",
          "taplo",
          "css-lsp",
          "deno",
          "tailwindcss-language-server",
          "bash-language-server",
          "clangd",
          "wgsl-analyzer",
        })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")
        },
        tsserver = {
                    -- this is to prevent conflict with denols
          single_file_support = false,
          root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json")
        },
        tailwindcss = {},
        bashls = {},
        clangd = {},
        wgsl_analyzer = {},
      },
    },
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
}
}
