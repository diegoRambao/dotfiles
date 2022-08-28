local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
    return
end

onedarkpro.setup({
  theme = "onedark_dark",
  colors = {
        bg = "#24272E"
    },
  options = {
      cursorline = true
  }
})

onedarkpro.load()
