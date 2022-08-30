local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
    return
end

onedarkpro.setup({
  colors = {
        bg = "#24272E"
    },
  options = {
      cursorline = true
  },
})
vim.cmd("colorscheme onedarkpro")  -- Lua
