return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    theme = {
      variant = 'auto',
    },
    extensions = {
      telescope = true,
      notify = true,
      mini = true,
      cmp = true,
      whichkey = true,
    },
  },
  init = function()
    vim.cmd.colorscheme 'cyberdream'
  end,
}
