local M = {}
local health = require('vim.health')

local api, fn = vim.api, vim.fn
local util = require 'lspconfig.util'
local lsp = vim.lsp

function check_socket()
  if host == "localhost" then
    host = "127.0.0.1"
  end
  local port = config.get().lsp.port
  if host ~= nil and port ~= nil then
    cmd = lsp.rpc.connect(host, port)



function M.check()
  local bin_path = config.get().lsp.bin_path or "llm-ls"

  if fn.executable(bin_path) == 0 then
    local llm_ls_path = download_llm_ls()
    if llm_ls_path == nil then
      vim.notify("[LLM] failed to download llm-ls", vim.log.levels.ERROR)
      return
    end
    cmd = { llm_ls_path }

  -- XXX: :checkhealth switches to its buffer before invoking the healthcheck(s).
  local orig_bufnr = vim.fn.bufnr('#')
  -- local buf_clients, other_matching_configs = check_lspconfig(orig_bufnr)
end

return M

