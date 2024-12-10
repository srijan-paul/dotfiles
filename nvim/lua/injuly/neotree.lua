local neotree = require("neo-tree")

neotree.setup({
	close_if_last_window = true,
	popup_border_style = 'rounded',
	enable_git_status = true,
	enable_diagnostics = true,
	default_component_configs = {
		mappings = {
		}
	},
	window = {
		position = 'float'
	},
	icon = {
		folder_closed = "",
		folder_open = "o",
		folder_empty = "󰜌",
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
	event_handlers = {
		{
			event = "neo_tree_popup_input_ready",
			---@param args { bufnr: integer, winid: integer }
			handler = function(args)
				vim.cmd("stopinsert")
				vim.keymap.set("i", "<esc>", vim.cmd.stopinsert, { noremap = true, buffer = args.bufnr })
			end,
		}
	}

})
