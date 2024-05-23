return {
  'echasnovski/mini.nvim',
  config = function ()
    require('mini.align').setup()
    require('mini.indentscope').setup()
		--require('mini.tabline').setup()
		-- require('mini.statusline').setup()
  end
}
