return {
  'luochen1990/rainbow',
  init = function()
    vim.g.rainbow_active = 1
  end,
  config = function()
    vim.cmd('RainbowToggleOn')
  end,
}
