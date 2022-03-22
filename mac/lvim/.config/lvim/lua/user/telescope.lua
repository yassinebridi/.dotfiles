---------------
-- Telescope --
---------------

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.active = false
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  -- for input mode
  lvim.builtin.telescope.defaults.mappings.i["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<M-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<M-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<M-p>"] = actions.cycle_history_prev
  -- for normal mode
  lvim.builtin.telescope.defaults.mappings.n["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.n["<M-k>"] = actions.move_selection_previous
end
