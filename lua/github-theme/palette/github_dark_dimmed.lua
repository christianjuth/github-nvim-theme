local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark_dimmed',
  light = false,
}

---Github Dark Dimmed scale variables
---source: https://github.com/primer/primitives/blob/main/data/colors/themes/dark_dimmed.ts
-- stylua: ignore
local scale = {
  black = '#ff0000',
  white = '#cdd9e5',
  gray = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  blue = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  green = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  yellow = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  orange = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  red = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  purple = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  pink = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
  coral = {
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
    '#ff0000', '#ff0000', '#ff0000', '#ff0000', '#ff0000',
  },
}

C.WHITE = C(scale.white)
C.BLACK = C(scale.black)
C.BG = "#ff0000"

local function alpha(color, a)
  return color:alpha_blend(a):to_css()
end

local palette = {
  scale = scale,

  orange = scale.orange[4],

  black = { base = scale.gray[10], bright = scale.gray[9] },
  gray = { base = scale.gray[5], bright = scale.gray[5] },
  blue = { base = scale.blue[4], bright = scale.blue[3] },
  green = { base = scale.green[4], bright = scale.green[3] },
  magenta = { base = scale.purple[4], bright = scale.purple[3] },
  pink = { base = scale.pink[4], bright = scale.pink[3] },
  red = { base = scale.red[4], bright = scale.red[3] },
  white = { base = scale.gray[3], bright = scale.gray[3] },
  yellow = { base = scale.yellow[4], bright = scale.yellow[3] },
  cyan = { base = '#76e3ea', bright = '#b3f0ff' },

  fg = {
    default = scale.gray[2],
    muted = scale.gray[4],
    subtle = scale.gray[5],
    on_emphasis = scale.white,
  },

  canvas = {
    default = "#ff0000",
    overlay = scale.gray[9],
    inset = scale.black,
    subtle = scale.gray[9],
  },

  border = {
    default = scale.gray[7],
    muted = scale.gray[8],
    subtle = alpha(C.from_rgba(240, 246, 252, 1), 0.1),
  },

  neutral = {
    emphasis_plus = scale.gray[5],
    emphasis = scale.gray[5],
    muted = alpha(C.from_rgba(110, 118, 129, 1), 0.4),
    subtle = alpha(C.from_rgba(110, 118, 129, 1), 0.1),
  },

  accent = {
    fg = scale.blue[4],
    emphasis = scale.blue[6],
    muted = alpha(C.from_rgba(56, 139, 253, 1), 0.4),
    subtle = alpha(C.from_rgba(56, 139, 253, 1), 0.15),
  },

  success = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = alpha(C.from_rgba(46, 160, 67, 1), 0.4),
    subtle = alpha(C.from_rgba(46, 160, 67, 1), 0.15),
  },

  attention = {
    fg = scale.yellow[4],
    emphasis = scale.yellow[6],
    muted = alpha(C.from_rgba(187, 128, 9, 1), 0.4),
    subtle = alpha(C.from_rgba(187, 128, 9, 1), 0.15),
  },

  severe = {
    fg = scale.orange[5],
    emphasis = scale.orange[6],
    muted = alpha(C.from_rgba(219, 109, 40, 1), 0.4),
    subtle = alpha(C.from_rgba(219, 109, 40, 1), 0.15),
  },

  danger = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = alpha(C.from_rgba(248, 81, 73, 1), 0.4),
    subtle = alpha(C.from_rgba(248, 81, 73, 1), 0.15),
  },

  open = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = alpha(C.from_rgba(46, 160, 67, 1), 0.4),
    subtle = alpha(C.from_rgba(46, 160, 67, 1), 0.15),
  },

  done = {
    fg = scale.purple[5],
    emphasis = scale.purple[6],
    muted = alpha(C.from_rgba(163, 113, 247, 1), 0.4),
    subtle = alpha(C.from_rgba(163, 113, 247, 1), 0.15),
  },

  closed = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = alpha(C.from_rgba(248, 81, 73, 1), 0.4),
    subtle = alpha(C.from_rgba(248, 81, 73, 1), 0.15),
  },

  sponsors = {
    fg = scale.pink[5],
    emphasis = scale.pink[6],
    muted = alpha(C.from_rgba(219, 97, 162, 1), 0.4),
    subtle = alpha(C.from_rgba(219, 97, 162, 1), 0.15),
  },
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = "#ff0000",         -- Dark bg (status line, popup and float)
    bg1  = "#ff0000",                                -- Default bg
    bg2  = "#ff0000",      -- Lighter bg (colorcolumn Folds)
    bg3  = "#ff0000",            -- Lighter bg (cursor line)
    bg4  = "#ff0000",                        -- Conceal

    fg0  = pal.fg.subtle,                            -- Lighter fg
    fg1  = pal.fg.default,                           -- Default fg
    fg2  = pal.fg.muted,                             -- Darker fg (status line)
    fg3  = pal.scale.gray[5],                        -- Darker fg (line numbers, fold columns)

    sel0 = alpha(C(pal.accent.fg), 0.40),            -- Visual selection bg
    sel1 = alpha(C(pal.fg.subtle), 0.05),            -- Popup sel bg
    sel2 = alpha(C(pal.scale.yellow[1]), 0.20),      -- Search bg
  }

  spec.syntax = {
    bracket     = pal.scale.green[4],                -- Brackets and Punctuation
    builtin0    = pal.scale.red[4],                  -- Builtin variable (Return Keywords, Regex, etc.)
    builtin1    = pal.scale.red[4],                  -- Builtin type
    builtin2    = pal.scale.blue[3],                 -- Builtin const
    comment     = pal.scale.gray[5],                 -- Comment
    conditional = pal.scale.red[4],                  -- Conditional and loop
    const       = pal.scale.blue[3],                 -- Constants, imports and booleans
    dep         = pal.scale.red[3],                  -- Deprecated
    field       = pal.scale.purple[3],               -- Field
    func        = pal.scale.purple[2],               -- Functions and Titles
    ident       = pal.scale.blue[3],                 -- Identifiers
    keyword     = pal.scale.red[4],                  -- Keywords
    number      = pal.scale.blue[3],                 -- Numbers
    operator    = pal.scale.red[4],                  -- Operators
    param       = pal.scale.orange[3],               -- Parameters
    preproc     = pal.scale.red[4],                  -- PreProc
    regex       = pal.scale.blue[3],                 -- Regex
    statement   = pal.scale.red[4],                  -- Statements
    string      = pal.scale.blue[2],                 -- Strings
    type        = pal.scale.red[4],                  -- Types
    tag         = pal.scale.green[2],                -- Tags
    variable    = spec.fg1,                          -- Variables
  }

  spec.diag = {
    error = pal.danger.fg,
    warn  = pal.attention.fg,
    info  = pal.accent.fg,
    hint  = pal.fg.muted,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
  }

  spec.diff = {
    add    = alpha(C(pal.scale.green[6]), 0.15),
    delete = alpha(C(pal.scale.red[6]), 0.15),
    change = alpha(C(pal.scale.yellow[6]), 0.15),
    text   = spec.fg0
  }

  spec.git = {
    add      = pal.success.fg,
    removed  = pal.danger.fg,
    changed  = pal.attention.fg,
    conflict = pal.severe.fg,
    ignored  = pal.fg.subtle,
  }

  -- stylua: ignore end
  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
