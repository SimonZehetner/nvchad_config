local null_ls = require "null-ls"

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  code_actions.gitsigns,

  diagnostics.buf,
  diagnostics.jsonlint,
  diagnostics.mypy,
  diagnostics.ruff, -- Python linter
  diagnostics.shellcheck,
  diagnostics.sqlfluff.with {
    extra_args = { "--dialect", "postgres" },
  },
  diagnostics.trail_space,
  diagnostics.vulture, -- Find dead Python code
  diagnostics.yamllint,

  formatting.beautysh,
  formatting.black.with { extra_args = { "--line-length", "110" } },
  formatting.buf,
  formatting.fixjson,
  formatting.isort.with { extra_args = { "--profile", "black" } },
  formatting.pg_format,
  formatting.rustfmt,
  formatting.stylua,
  formatting.xmllint,
  formatting.yamlfmt,

  lint.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
