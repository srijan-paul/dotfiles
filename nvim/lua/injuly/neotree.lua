local neotree = require("neo-tree")

neotree.setup({
  close_if_last_window = true,
  popup_border_style = 'rounded',
  enable_git_status = true,
  enable_diagnostics = true,
  enable_normal_mode_for_inputs = true,
  default_component_configs = {
    mappings = {
    }
  },
  window = {
    position = 'float'
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_hidden = false,
      hide_gitignored = false,
      use_libuv_file_watcher = true
    }
  },
})
