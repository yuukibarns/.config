local opt = vim.opt

-- 1 important

-- 2 moving around, searching and patterns
opt.whichwrap:append("[,]")
opt.ignorecase = true
opt.smartcase = true

-- 3 tags

-- 4 displaying text
opt.smoothscroll = true
opt.scrolloff = 2
opt.linebreak = true
opt.breakindent = true
opt.showbreak = "> "
opt.fillchars = { diff = "╱", eob = " ", fold = "." }
-- opt.cmdheight = 0
opt.signcolumn = "number"
opt.number = false
opt.relativenumber = true
opt.numberwidth = 3

-- 5 syntax, highlighting and spelling
-- opt.colorcolumn = "80"
-- opt.textwidth = 70
opt.cursorline = true
-- opt.guicursor = "n-v-c-sm:block-blinkwait700-blinkon400-blinkoff250,i-ci-ve:ver25-blinkwait700-blinkon400-blinkoff250,r-cr-o:hor20-blinkwait700-blinkon400-blinkoff250"
opt.spelllang = "en_gb,en_us"
opt.fileencodings = "ucs-bom,utf-8,default,cp932,cp936,latin1"

-- opt.spellfile = "~/.config/nvim/spell/en.utf-8.add"

-- 6 multiple windows
opt.laststatus = 3
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true

-- 7 multiple tab pages

-- 8 terminal
opt.termguicolors = true
-- opt.pumblend = 30
-- opt.winblend = 30
-- opt.winborder = "rounded"

-- 9 using the mouse
opt.mouse = "nvi"
-- opt.mousescroll = "ver:5,hor:6"

-- 10 messages and info
opt.shortmess:append({ W = true, I = true, c = true })
opt.confirm = true

-- 11 selecting text
opt.clipboard = "unnamedplus"

-- 12 editing text
opt.undofile = true
opt.formatoptions = "tcroqnlj"
-- opt.formatexpr = "v:lua.require'conform'.formatexpr()"
opt.pumheight = 10

-- 13 tabs and indenting
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- 14 folding
opt.foldlevel = 99
opt.foldtext = ""
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- 15 diff mode
opt.diffopt:append({ linematch = 60 })

-- 16 mapping
opt.timeoutlen = 500

-- 17 reading and writing files

-- 18 the swap file
opt.swapfile = false
opt.updatetime = 200

-- 19 command line editing

-- 20 executing external commands

-- 21 running make and jumping to errors (quickfix)

-- 22 language specific

-- 23 multi-byte characters

-- 24 various
opt.virtualedit = "block"
