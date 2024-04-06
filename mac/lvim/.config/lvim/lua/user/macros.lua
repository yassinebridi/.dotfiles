vim.cmd [[
  inoremap <C-l> <esc>diw[(opbi<ea>[(%Opbi</ea>
  inoremap <C-x> <esc>yiwi<ea></pa>bba
]]

local surround_tag_with_divs = function()
  require('macroni').run('c<lt>div><CR><Esc>pkj<Tab>kdd')
end
local console_variable = function()
  require('macroni').run('yiwoconsole.log("<Esc>pa:<Space>",<Space><Esc>pa);<Esc>')
end
local try_catch = function()
  require('macroni').run('ctry<Space>P<BS>{<CR><Esc>Vpkvl<Esc>gl%a<Space>catch<Space>(error)<Space>{<CR>console.error("Error:<Space>",<Space>error);<Esc>')
end
-- local create_tag = function()
--   require('macroni').run('<Esc>ciw<lt><Esc>pa><CR><BS><lt>/<Esc>pa><Esc>lDO<Esc>')
-- end
lvim.builtin.which_key.vmappings["tg"] = { surround_tag_with_divs, "Surround Tag with divs" }
lvim.builtin.which_key.mappings["lt"] = { console_variable, "Console Variable" }
lvim.builtin.which_key.vmappings["tr"] = { try_catch, "Try Catch" }
-- vim.keymap.set('i', '<C-x>', create_tag, { remap = true })

