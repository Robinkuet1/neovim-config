local z_utils = require("telescope._extensions.zoxide.utils")

require("telescope").setup { 
  defaults = { 
    file_ignore_patterns = { ".git/" } 
  },
  extensions = {
    zoxide = {
      prompt_title = "[ Zoxide ]",
      mappings = {
        default = {
          after_action = function(selection)
            print("Update to (" .. selection.z_score .. ") " .. selection.path)
          end
        },
        ["<C-s>"] = {
          before_action = function(selection) print("before C-s") end,
          action = function(selection)
            vim.cmd.edit(selection.path)
          end
        },
        -- Opens the selected entry in a new split
        ["<C-q>"] = { action = z_utils.create_basic_command("split") },
      },
    }
  }
}

require("telescope").load_extension('zoxide')
