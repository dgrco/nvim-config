lsp_servers = {
  "tsserver",
}

for i, server in ipairs(lsp_servers) do
  require("lspconfig")[server].setup{}
end
