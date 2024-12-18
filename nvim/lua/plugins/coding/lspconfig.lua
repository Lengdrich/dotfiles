local M = {}
local lspconfig = require("lspconfig")

local signs = {
  Error = " ",
  Warn = " ",
  Info = " ",
  Hint = " ",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

M.capabilities =
  vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), require("epo").register_cap())

function M._attach(client, bufnr)
  vim.opt.omnifunc = "v:lua.vim.lsp.omnifunc"
  vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
  client.server_capabilities.semanticTokensProvider = nil
  local orignal = vim.notify
  local mynotify = function(msg, level, opts)
    if msg == "No code actions available" or msg:find("overly") then
      return
    end
    orignal(msg, level, opts)
  end
  vim.notify = mynotify
end

vim.diagnostic.config({
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  virtual_text = {
    prefix = "🔥",
    source = true,
  },
})

lspconfig.gopls.setup({
  cmd = { "gopls", "serve" },
  on_attach = M._attach,
  capabilities = M.capabilities,
  settings = {
    gopls = {
      usePlaceholders = true,
      completeUnimported = true,
      analyses = {
        unusedparams = true,
      },
      -- semanticTokens = true,
      staticcheck = true,
    },
  },
})

lspconfig.lua_ls.setup({
  on_attach = M._attach,
  capabilities = M.capabilities,
  settings = {
    Lua = {
      diagnostics = {
        unusedLocalExclude = { "_*" },
        globals = { "vim" },
        disable = {
          "luadoc-miss-see-name",
          "undefined-field",
        },
      },
      runtime = {
        version = "LuaJIT",
        -- path = vim.split(package.path, ';'),
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME .. "/lua",
          "${3rd}/busted/library",
          "${3rd}/luv/library",
        },
        checkThirdParty = "Disable",
      },
      completion = {
        callSnippet = "Replace",
      },
    },
  },
})

lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index" },
  on_attach = M._attach,
  capabilities = M.capabilities,
  root_dir = function(fname)
    return lspconfig.util.root_pattern(unpack({
      --reorder
      "compile_commands.json",
      ".clangd",
      ".clang-tidy",
      ".clang-format",
      "compile_flags.txt",
      "configure.ac", -- AutoTools
    }))(fname) or lspconfig.util.find_git_ancestor(fname)
  end,
})

lspconfig.rust_analyzer.setup({
  on_attach = M._attach,
  capabilities = M.capabilities,

  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      -- Add clippy lints for Rust.
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
        extraArgs = { "--no-deps" },
      },
      procMacro = {
        enable = true,
        ignored = {
          ["async-trait"] = { "async_trait" },
          ["napi-derive"] = { "napi" },
          ["async-recursion"] = { "async_recursion" },
        },
      },
    },
  },
})

local front_ft = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json", "html" }

lspconfig.vuels.setup({
  filetype = front_ft,
})

local servers = {
  "dockerls",
  "pyright",
  "bashls",
  "zls",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = M.capabilities,
  })
end

vim.lsp.handlers["workspace/diagnostic/refresh"] = function(_, _, ctx)
  local ns = vim.lsp.diagnostic.get_namespace(ctx.client_id)
  local bufnr = vim.api.nvim_get_current_buf()
  vim.diagnostic.reset(ns, bufnr)
  return true
end
