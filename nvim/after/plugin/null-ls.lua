-- null-ls
local null_ls = require("null-ls")
local sources = {
    null_ls.builtins.formatting.trim_newlines.with({
        disabled_filetypes = { "rust" }, -- use rustfmt
    }),
    null_ls.builtins.formatting.trim_whitespace.with({
        disabled_filetypes = { "rust" }, -- use rustfmt
    }),
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.prettier.with({
        filetypes = { "html", "css", "yaml", "markdown", "json", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "graphql", "lua", "python", "dart", "yaml", "toml", "scss", "sass", "less", "jsonc", "json5", "bash", "sh", "zsh", "fish", "dockerfile", "vim", "elixir", "erlang", "elm", "hcl", "terraform", "ruby", "go", "php", "java", "dart", "julia", "sql", "swift", "kotlin", "r", "perl", "lua", "c", "cpp", "haskell", "ocaml", "fsharp", "racket", "clojure", "crystal", "nim", "nix", "purescript", "reason", "scala", "solidity", "verilog", "vhdl", "yaml", "toml", "scss", "sass", "less", "jsonc", "json5", "bash", "sh", "zsh", "fish", "dockerfile", "vim", "elixir", "erlang", "elm", "hcl", "terraform", "ruby", "go", "php", "java", "dart", "julia", "sql", "swift", "kotlin", "r", "perl", "lua", "c", "cpp", "haskell", "ocaml", "fsharp", "racket", "clojure", "crystal", "nim", "nix", "purescript", "reason", "scala", "solidity", "verilog", "vhdl"  },
    }),
    null_ls.builtins.formatting.sqlformat,
    null_ls.builtins.formatting.black,
    -- null_ls.builtins.formatting.isort,
}
null_ls.setup({ sources = sources })
