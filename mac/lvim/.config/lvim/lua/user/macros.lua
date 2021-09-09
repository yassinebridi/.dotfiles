------------
-- Macros --
------------

-- Typescript
-- Surround with trycatch
-- lvim.keys.visual_mode["<leader>tr"] = '>gvctry {}kpk%a catch(error){console.log(error)}'

-- -- JSX Tag completion
lvim.keys.insert_mode["<M-tab>"] = '<esc>yiwi<<esc>ea></<esc>pa><esc>bba'

-- -- JSX Tag completion without closing tag
lvim.keys.insert_mode["<C-y>"] = '<esc>bi<<esc>ea /><esc>'

-- -- Enclose a bunch of tags with a div Tag
lvim.keys.visual_mode["<leader>tg"] = 'dOdiv<esc><esc>"ayiwi<ea></"apa>bbaPka'

-- -- Console.log macos
lvim.keys.normal_mode["<leader>lt"] = "yiwoconsole.log('<esc>pa: ', <esc>pa);<esc>"
