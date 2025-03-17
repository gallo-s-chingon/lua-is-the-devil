-- Set terminal colors first (for 256-color support)
vim.g.terminal_color_0  = '#0D1116'  -- background
vim.g.terminal_color_1  = '#949ae5'  -- linkarzu_color01
vim.g.terminal_color_2  = '#37f499'  -- linkarzu_color02
vim.g.terminal_color_3  = '#04d1f9'  -- linkarzu_color03
vim.g.terminal_color_4  = '#987afb'  -- linkarzu_color04
vim.g.terminal_color_5  = '#19dfcf'  -- linkarzu_color05
vim.g.terminal_color_6  = '#1682ef'  -- linkarzu_color06
vim.g.terminal_color_7  = '#1c242f'  -- linkarzu_color07
vim.g.terminal_color_8  = '#5fa9f4'  -- linkarzu_color08
vim.g.terminal_color_9  = '#a5afc2'  -- linkarzu_color09
vim.g.terminal_color_10 = '#0D1116'  -- linkarzu_color10
vim.g.terminal_color_11 = '#f16c75'  -- linkarzu_color11
vim.g.terminal_color_12 = '#f1fc79'  -- linkarzu_color12
vim.g.terminal_color_13 = '#314154'  -- linkarzu_color13
vim.g.terminal_color_14 = '#ebfafa'  -- linkarzu_color14
vim.g.terminal_color_15 = '#013e4a'  -- linkarzu_color15
vim.g.terminal_color_16 = '#e9b3fd'  -- linkarzu_color16
vim.g.terminal_color_17 = '#141b22'  -- linkarzu_color17
vim.g.terminal_color_18 = '#5b4996'  -- linkarzu_color18
vim.g.terminal_color_19 = '#21925b'  -- linkarzu_color19
vim.g.terminal_color_20 = '#027d95'  -- linkarzu_color20
vim.g.terminal_color_21 = '#585c89'  -- linkarzu_color21
vim.g.terminal_color_22 = '#0f857c'  -- linkarzu_color22
vim.g.terminal_color_23 = '#396592'  -- linkarzu_color23
vim.g.terminal_color_24 = '#f94dff'  -- linkarzu_color24
vim.g.terminal_color_25 = '#232e3b'  -- linkarzu_color25
vim.g.terminal_color_26 = '#0D1116'  -- linkarzu_color26

-- Define the colorscheme
local colors = {
  bg = '#0D1116',        -- linkarzu_color10
  fg = '#ebfafa',        -- linkarzu_color14
  comment = '#a5afc2',   -- linkarzu_color09
  cursor = '#f94dff',    -- linkarzu_color24
  cursorline = '#314154',-- linkarzu_color13
  selection = '#e9b3fd', -- linkarzu_color16
  spellbad = '#f16c75',  -- linkarzu_color11
  spellcap = '#f1fc79',  -- linkarzu_color12
  lualine = '#141b22',   -- linkarzu_color17
  md_code = '#1c242f',   -- linkarzu_color07
  md_h1 = '#987afb',     -- linkarzu_color04
  md_h2 = '#37f499',     -- linkarzu_color02
  md_h3 = '#04d1f9',     -- linkarzu_color03
  md_h4 = '#949ae5',     -- linkarzu_color01
  md_h5 = '#19dfcf',     -- linkarzu_color05
  md_h6 = '#5fa9f4',     -- linkarzu_color08
  md_h1_dark = '#5b4996',-- linkarzu_color18
  md_h2_dark = '#21925b',-- linkarzu_color19
  md_h3_dark = '#027d95',-- linkarzu_color20
  md_h4_dark = '#585c89',-- linkarzu_color21
  md_h5_dark = '#0f857c',-- linkarzu_color22
  md_h6_dark = '#396592',-- linkarzu_color23
  md_fg = '#0D1116',     -- linkarzu_color26
}

-- Apply highlights
vim.api.nvim_set_hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, 'Comment', { fg = colors.comment })
vim.api.nvim_set_hl(0, 'Cursor', { fg = colors.bg, bg = colors.cursor })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.cursorline })
vim.api.nvim_set_hl(0, 'Visual', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'SpellBad', { undercurl = true, sp = colors.spellbad })
vim.api.nvim_set_hl(0, 'SpellCap', { undercurl = true, sp = colors.spellcap })
vim.api.nvim_set_hl(0, 'StatusLine', { bg = colors.lualine, fg = colors.fg })
vim.api.nvim_set_hl(0, 'markdownCode', { bg = colors.md_code })

-- Markdown headings
vim.api.nvim_set_hl(0, 'markdownH1', { fg = colors.md_h1, bg = colors.md_fg })
vim.api.nvim_set_hl(0, 'markdownH2', { fg = colors.md_h2, bg = colors.md_fg })
vim.api.nvim_set_hl(0, 'markdownH3', { fg = colors.md_h3, bg = colors.md_fg })
vim.api.nvim_set_hl(0, 'markdownH4', { fg = colors.md_h4, bg = colors.md_fg })
vim.api.nvim_set_hl(0, 'markdownH5', { fg = colors.md_h5, bg = colors.md_fg })
vim.api.nvim_set_hl(0, 'markdownH6', { fg = colors.md_h6, bg = colors.md_fg })

-- Darkened headings (optional, if your markdown plugin supports custom groups)
vim.api.nvim_set_hl(0, 'markdownH1Dark', { fg = colors.md_h1_dark })
vim.api.nvim_set_hl(0, 'markdownH2Dark', { fg = colors.md_h2_dark })
vim.api.nvim_set_hl(0, 'markdownH3Dark', { fg = colors.md_h3_dark })
vim.api.nvim_set_hl(0, 'markdownH4Dark', { fg = colors.md_h4_dark })
vim.api.nvim_set_hl(0, 'markdownH5Dark', { fg = colors.md_h5_dark })
vim.api.nvim_set_hl(0, 'markdownH6Dark', { fg = colors.md_h6_dark })

-- Enable the colorscheme
vim.cmd('colorscheme linkarzu')