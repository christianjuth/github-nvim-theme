local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark_colorblind',
  light = false,
}

---Github Dark Colorblind scale variables
---source: https://github.com/primer/primitives/blob/main/data/colors/themes/dark_colorblind.ts
-- stylua: ignore
local scale = {
  black = '#010409',
  white = '#ffffff',
  gray = {
    '#f0f6fc', '#c9d1d9', '#b1bac4', '#8b949e', '#6e7681',
    '#484f58', '#30363d', '#21262d', '#161b22', '#0d1117',
  },
  blue = {
    '#cae8ff', '#a5d6ff', '#79c0ff', '#58a6ff', '#388bfd',
    '#1f6feb', '#1158c7', '#0d419d', '#0c2d6b', '#051d4d',
  },
  green = {
    '#cae8ff', '#a5d6ff', '#79c0ff', '#58a6ff', '#388bfd',
    '#1f6feb', '#1158c7', '#0d419d', '#0c2d6b', '#051d4d',
  },
  yellow = {
    '#f8e3a1', '#f2cc60', '#e3b341', '#d29922', '#bb8009',
    '#9e6a03', '#845306', '#693e00', '#4b2900', '#341a00',
  },
  orange = {
    '#ffe2bb', '#ffc981', '#fdac54', '#ec8e2c', '#d47616',
    '#b76100', '#914d04', '#6c3906', '#4e2906', '#331c04',
  },
  red = {
    '#ffe2bb', '#ffc981', '#fdac54', '#ec8e2c', '#d47616',
    '#b76100', '#914d04', '#6c3906', '#4e2906', '#331c04',
  },
  purple = {
    '#eddeff', '#e2c5ff', '#d2a8ff', '#bc8cff', '#a371f7',
    '#8957e5', '#6e40c9', '#553098', '#3c1e70', '#271052',
  },
  pink = {
    '#ffdaec', '#ffbedd', '#ff9bce', '#f778ba', '#db61a2',
    '#bf4b8a', '#9e3670', '#7d2457', '#5e103e', '#42062a',
  },
  coral = {
    '#ffddd2', '#ffc2b2', '#ffa28b', '#f78166', '#ea6045',
    '#cf462d', '#ac3220', '#872012', '#640d04', '#460701',
  },
}

C.WHITE = C(scale.white)
C.BLACK = C(scale.black)
C.BG = C(scale.gray[10])

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
    default = scale.gray[10],
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
    fg = scale.orange[4],
    emphasis = scale.orange[6],
    muted = alpha(C.from_hex(scale.orange[5]), 0.4),
    subtle = alpha(C.from_hex(scale.orange[5]), 0.15),
  },

  done = {
    fg = scale.purple[5],
    emphasis = scale.purple[6],
    muted = alpha(C.from_rgba(163, 113, 247, 1), 0.4),
    subtle = alpha(C.from_rgba(163, 113, 247, 1), 0.15),
  },

  closed = {
    fg = scale.gray[4],
    emphasis = scale.gray[5],
    muted = alpha(C.from_hex(scale.gray[5]), 0.4),
    subtle = alpha(C.from_hex(scale.gray[5]), 0.10),
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
    bg0  = alpha(C(pal.canvas.inset), 0.75),         -- Dark bg (status line, popup and float)
    bg1  = pal.canvas.default,                       -- Default bg
    bg2  = alpha(C(pal.neutral.emphasis), 0.1),      -- Lighter bg (colorcolumn Folds)
    bg3  = pal.scale.gray[9],                        -- Lighter bg (cursor line)
    bg4  = pal.scale.gray[4],                        -- Conceal

    fg0  = pal.fg.subtle,                            -- Lighter fg
    fg1  = pal.fg.default,                           -- Default fg
    fg2  = pal.fg.muted,                             -- Darker fg (status line)
    fg3  = pal.scale.gray[5],                        -- Darker fg (line numbers, fold columns)

    sel0 = alpha(C(pal.accent.fg), 0.45),            -- Visual selection bg
    sel1 = alpha(C(pal.fg.subtle), 0.05),            -- Popup sel bg
    sel2 = alpha(C(pal.scale.yellow[3]), 0.60),      -- Search bg
  }

  spec.syntax = {
    bracket     = pal.scale.orange[3],               -- Brackets and Punctuation
    builtin0    = pal.scale.red[4],                  -- Builtin variable (Return Keywords, Regex, etc.)
    builtin1    = pal.scale.red[4],                  -- Builtin type
    builtin2    = pal.scale.blue[3],                 -- Builtin const
    comment     = pal.scale.gray[5],                 -- Comment
    conditional = pal.scale.red[4],                  -- Conditional and loop
    const       = pal.scale.blue[3],                 -- Constants, imports and booleans
    dep         = pal.scale.red[3],                  -- Deprecated
    field       = pal.scale.orange[3],               -- Field
    func        = pal.scale.purple[3],               -- Functions and Titles
    ident       = pal.scale.blue[3],                 -- Identifiers
    keyword     = pal.scale.red[4],                  -- Keywords
    number      = pal.scale.blue[3],                 -- Numbers
    operator    = pal.scale.red[4],                  -- Operators
    param       = pal.scale.orange[2],               -- Parameters
    preproc     = pal.scale.red[4],                  -- PreProc
    regex       = pal.scale.blue[3],                 -- Regex
    statement   = pal.scale.red[4],                  -- Statements
    string      = pal.scale.blue[2],                 -- Strings
    type        = pal.scale.orange[3],               -- Types
    tag         = pal.scale.blue[3],                 -- Tags
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
