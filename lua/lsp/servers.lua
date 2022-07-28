lsp_servers = {
  "tsserver",
  "clangd",
}

for i, server in ipairs(lsp_servers) do
  require("lspconfig")[server].setup{}
end
