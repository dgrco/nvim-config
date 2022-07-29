lsp_servers = {
  "tsserver",
  "clangd",
  "tailwindcss",
}

for i, server in ipairs(lsp_servers) do
  require("lspconfig")[server].setup(require("coq").lsp_ensure_capabilities())
end
