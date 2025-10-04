return {
  {
    'mfussenegger/nvim-dap',
    config = function ()
      local dap = require('dap')

      dap.adapters.kotlin = {
        type = 'executable',
        command = 'kotlin-debug-adapter',
        args = {},
      }

      dap.configurations.kotlin = {
        {
          type = 'kotlin',
          request = 'launch',
          name = 'Launch Server',
          mainClass = 'com.gravie.ApplicationKt',
          projectRoot = '${workspaceFolder}'
        },
        {
          type = 'kotlin',
          request = 'attach',
          name = 'Attach to kotlin process'
        }
      }

    end
  },
  {'nvim-neotest/nvim-nio'},
  {'rcarriga/nvim-dap-ui'},
}
