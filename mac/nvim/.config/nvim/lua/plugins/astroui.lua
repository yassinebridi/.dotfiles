-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "gruvbox",
    highlights = {
      -- apply highlight group to all colorschemes (include the default_theme)
      init = {
        -- set the transparency for all of these highlight groups
        -- cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
        -- cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
        -- cmd "au ColorScheme * hi NormalNC ctermbg=none guibg=none"
        -- cmd "au ColorScheme * hi MsgArea ctermbg=none guibg=none"
        -- cmd "au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none"
        -- cmd "au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none"
        Normal = { bg = "NONE", ctermbg = "NONE" },
        SignColumn = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        MsgArea = { bg = "NONE", ctermbg = "NONE" },
        TelescopeBorder = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
        CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
        NormalFloat = { bg = "NONE", ctermbg = "NONE" },
        FloatBorder = { bg = "NONE", ctermbg = "NONE" },
      },
    },
    -- -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    -- highlights = {
    --   init = { -- this table overrides highlights in all themes
    --     -- Normal = { bg = "#000000" },
    --   },
    --   astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
    --     -- Normal = { bg = "#000000" },
    --   },
    -- },
    -- -- Icons can be configured throughout the interface
    -- icons = {
    --   -- configure the loading of the lsp in the status line
    --   LSPLoading1 = "⠋",
    --   LSPLoading2 = "⠙",
    --   LSPLoading3 = "⠹",
    --   LSPLoading4 = "⠸",
    --   LSPLoading5 = "⠼",
    --   LSPLoading6 = "⠴",
    --   LSPLoading7 = "⠦",
    --   LSPLoading8 = "⠧",
    --   LSPLoading9 = "⠇",
    --   LSPLoading10 = "⠏",
    -- },
  },
}
