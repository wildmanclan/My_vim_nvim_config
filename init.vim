


" PLUGINS {{{
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/plugins')

" more vim plugins
Plugin 'msanders/snipmate.vim'            " implements some of TextMate's snippets features in Vim.
Plugin 'suan/vim-instant-markdown'        " Instant Markdown previews from VIm!
Plugin 'scrooloose/nerdcommenter'         " Vim plugin for intensely orgasmic commenting
Plugin 'terryma/vim-multiple-cursors'     " True Sublime Text style multiple selections for Vim
Plugin 'vim-scripts/ShowTrailingWhitespace' " Detect unwanted whitespace at the end of lines.
Plugin 'majutsushi/tagbar'                " Vim plugin that displays tags in a window, ordered by scope


" vim plugins
Plugin 'VundleVim/Vundle.vim'     " required to work properly
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'mg979/vim-visual-multi'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'lyuts/vim-rtags'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'



" languages ruby
Plugin 'vim-ruby/vim-ruby'


  " golang
Plugin 'jnwhiteh/vim-golang'
Plugin 'dgryski/vim-godef'
Plugin 'nsf/gocode'

" python
Plugin 'vim-python/python-syntax'



  "  add on plugins
Plugin 'savq/melange'
Plugin 'lilydjwg/colorizer'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'unblevable/quick-scope'



" nvim plugins
Plugin 'rafamadriz/friendly-snippets'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'sudormrfbin/cheatsheet.nvim'
Plugin 'lewis6991/impatient.nvim'
Plugin 'windwp/nvim-ts-autotag'
Plugin 'max397574/better-escape.nvim'
Plugin 'folke/which-key.nvim'
Plugin 'nvim-telescope/telescope-fzf-native.nvim'
Plugin 'neovim/nvim-lspconfig'
Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'nathom/filetype.nvim'
Plugin 'moll/vim-bbye'
Plugin 'lukas-reineke/indent-blankline.nvim'
Plugin 'karb94/neoscroll.nvim'
Plugin 'glepnir/dashboard-nvim'
Plugin 'tami5/lspsaga.nvim'
Plugin 'williamboman/nvim-lsp-installer'
Plugin 'rcarriga/nvim-notify'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'romgrk/barbar.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'BurntSushi/ripgrep'
Plugin 'junegunn/limelight.vim'




" vim colorschemes
Plugin 'sainnhe/gruvbox-material'
Plugin 'morhetz/gruvbox'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'sjl/badwolf'
Plugin 'vim-scripts/robinhood.vim'
Plugin 'pcostasgr/red_alert_vim_theme'
Plugin 'bdesham/biogoo'


call vundle#end()            " required
filetype plugin indent on    " required
"}}}

" Required {{{ set nocompatible
syntax enable
set filetype=on
"}}}






" Basic configuration {{{
set wildmenu
set path+=**
set foldenable
set foldmethod
set foldmarker={{{,}}}
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set termencoding=utf-8
set colorcolumn=73

set sidescrolloff=3
set scrolloff=3
set expandtab
set autoindent
set smartindent
set smartcase
set ignorecase
set nowrap
set ch=1
set softtabstop=4


set cuc
set secure
set culopt=both
set autochdir
set mouse=a
set autochdir
set cuc
set termguicolors


set cursorline
set cursorlineopt=both
set spell
set spellsuggest=best
set laststatus=2
set equalalways
set eadirection=both
set hidden


set splitbelow splitright
set title
set ruler
set confirm
set modifiable
set timeoutlen=400
set history=10000
set encoding=utf-8
set emoji


set loadplugins
set secure
set smarttab
set path+=**
set wildmode=longest,full,list
set showmatch
set linebreak
set clipboard=unamed
set clipboard+=unnamedplus
set spelllang=en_us


set listchars+=trail:-
set list
set fillchars+=eob:\
set complete=.,w,b,u,i,kspell
set incsearch
set noerrorbells
set undofile


set noswapfile
set nobackup
set hlsearch
set filetype=cro
set fileformat=unix
set showcmd
set signcolumn=yes
set autoread
set textwidth=1

" statuline
set statusline=
set statusline+=\ %y
set statusline+=\ %k
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "right side"
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]


"}}}


" babar config {{{

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

function s:Barbar_Tab()

        let fg_target = 'red'

        let fg_current  = s:fg(['Normal'], '#efefef')
        let fg_visible  = s:fg(['TabLineSel'], '#efefef')
        let fg_inactive = s:fg(['TabLineFill'], '#888888')

        let fg_modified  = s:fg(['WarningMsg'], '#E5AB0E')
        let fg_special  = s:fg(['Special'], '#599eff')
        let fg_subtle  = s:fg(['NonText', 'Comment'], '#555555')

        let bg_current  = s:bg(['Normal'], '#000000')
        let bg_visible  = s:bg(['TabLineSel', 'Normal'], '#000000')
        let bg_inactive = s:bg(['TabLineFill', 'StatusLine'], '#000000')
        " Meaning of terms:
        "
        " format: "Buffer" + status + part
        "
        " status:
        "     *Current: current buffer
        "     *Visible: visible but not current buffer
        "    *Inactive: invisible but not current buffer
        "
        " part:
        "        *Icon: filetype icon
        "       *Index: buffer index
        "         *Mod: when modified
        "        *Sign: the separator between buffers
        "      *Target: letter in buffer-picking mode
        "
        " BufferTabpages: tabpage indicator
        " BufferTabpageFill: filler after the buffer section
        " BufferOffset: offset section, created with set_offset()

        call s:hi_all([
                    \ ['BufferCurrent',        fg_current,  bg_current],
                    \ ['BufferCurrentIndex',   fg_special,  bg_current],
                    \ ['BufferCurrentMod',     fg_modified, bg_current],
                    \ ['BufferCurrentSign',    fg_special,  bg_current],
                    \ ['BufferCurrentTarget',  fg_target,   bg_current,   'bold'],
                    \ ['BufferVisible',        fg_visible,  bg_visible],
                    \ ['BufferVisibleIndex',   fg_visible,  bg_visible],
                    \ ['BufferVisibleMod',     fg_modified, bg_visible],
                    \ ['BufferVisibleSign',    fg_visible,  bg_visible],
                    \ ['BufferVisibleTarget',  fg_target,   bg_visible,   'bold'],
                    \ ['BufferInactive',       fg_inactive, bg_inactive],
                    \ ['BufferInactiveIndex',  fg_subtle,   bg_inactive],
                    \ ['BufferInactiveMod',    fg_modified, bg_inactive],
                    \ ['BufferInactiveSign',   fg_subtle,   bg_inactive],
                    \ ['BufferInactiveTarget', fg_target,   bg_inactive,  'bold'],
                    \ ['BufferTabpages',       fg_special,  bg_inactive, 'bold'],
                    \ ['BufferTabpageFill',    fg_inactive, bg_inactive],
                    \ ])

        call  s:hi_link([
                    \ ['BufferCurrentIcon',  'BufferCurrent'],
                    \ ['BufferVisibleIcon',  'BufferVisible'],
                    \ ['BufferInactiveIcon', 'BufferInactive'],
                    \ ['BufferOffset',       'BufferTabpageFill'],
                    \ ])
    endfunc
        " NOTE: this is an example taken from the source, implementation of
        " s:fg(), s:bg(), s:hi_all() and s:hi_link() is left as an exercise
        " for the reader.


"}}}


" config  {{{



highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline



augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:qs_hi_priority = 2

"b, B, w, W, ge, gE, e, E



"au CursorHoldI * stopinsert

match ErrorMsg '\s\+$'

  function! <SID>SynStack()
      if !exists("*synstack")
          return
      endif
          echo map(synstack(line('.'), col('.')), 'synIDat>
      endfunc

  " function key
  nmap <F1> :call <SID>SynStack()<CR>


  noremap <silent> K 100j
  noremap <silent> L 100k



" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Show all builtin pickers
" :Telescope =

" Tab completion
" :Telescope '|<tab>'
" :Telescope find_files

" Setting options
" :Telescope find_files prompt_prefix = '🔍'

" If the option accepts a Lua table as its value, you can use, to connect each
" command string, e.g.: find_command, vimgrep_arguments are both options that
" accept a Lua table as a value. So, you can configure them on the command line
"like so:
" :Telescope find_files find_command = 'rg', '--ignore', '--hidden', '--files'
" :prompt_prefix = '🔍'


" Reference
"  Ps = 0 -> blinking block
"  Ps = 1 -> blinking block default
"  Ps = 2 -> steady block
"  Ps = 3 -> blinking underline
"  Ps = 4 -> steady underline
"  Ps = 5 -> blinking bar xterm
"  Ps = 6 -> steady bar x term
let &t_SI = "\e[5 q"
let &t_EI = "\e[3 q"


"http://stackoverflow.com/questions/13194428/is-better-way-to-zoom-windows-in-vim-than-zoomwin
" Zoom / Restore window.
  function! s:ZoomToggle() abort
      if exists('t:zoomed') && t:zoomed
          execute t:zoom_winrestcmd
          let t:zoomed = 0
      else
          let t:zoom_winrestcmd = winrestcmd()
          resize
          vertical resize
          let t:zoomed = 1
      endif
  endfunction
  command! ZoomToggle call s:ZoomToggle()
  nnoremap <silent> Z :ZoomToggle<CR>


  " The screen is not cleared when your exit
  " set t_ti= t_te=



  " Leave the cursor at center of window
  nmap n nzz
  map <C-d> <C-d>zz
  map <C-u> <C-u>zz
  map <C-o> <C-o>zz


  " New tab
  nmap <C-t> :tabnew<CR>




  " Highlight TODO, DONE, BUG, etc.
  if has("autocmd")
    if v:version > 701
      autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|DONE\|BUG\)')
    endif
  endif

  " Use tab to indent
  nmap <tab> v>
  nmap <s-tab> v<
  vmap <tab> >gv
  vmap <s-tab> <gv

  " Autocompletion
  set sb " splitbelow
  set complete=.,w,b,u,i,kspell
  autocmd FileType go inoremap <expr> <tab> pumvisible() ? '<C-n>' : '<C-x><C-o>'
  autocmd FileType go inoremap <expr> <s-tab> pumvisible() ? '<C-p>' : '<C-x><C-o>'

  " Leader
  nnoremap <leader>w :w<CR>


  " turn to next or previous errors, after open location list
  nmap <leader>j :lnext<CR>
  nmap <leader>k :lprevious<CR>

  " turn to next or previous errors, after open quickfix list
  nmap <leader>l :cnext<CR>
  nmap <leader>h :cprevious<CR>
  nmap <leader>- :vertical resize -2<CR>
  nmap <leader>= :vertical resize +2<CR>


  " reset all error checking: Stop the highlighting, close locationlist
  noremap <esc><esc><esc><esc> :nohl<cr>:lclose<cr>


  " =========================================================
  " Configuration: nerdtree
  " How can I open NERDTree automatically when vim starts up on opening a directory?
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTr>
  " How can I map a specific key or shortcut to open NERDTree?
  map <C-n> :NERDTreeToggle<CR>
  map <C-f> :NERDTreeFind<CR>

  " Configuration: nerdtree
  " How can I open NERDTree automatically when vim starts up on opening a directory?
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTr>
  " How can I map a specific key or shortcut to open NERDTree?
  map <C-n> :NERDTreeToggle<CR>
  map <C-f> :NERDTreeFind<CR>

  " =========================================================
  " Configuration: ctrlp.vim
  " switch to filename only search instead of full path
  let g:ctrlp_by_filename = 1
  " switch to show hidden files
  let g:ctrlp_show_hidden = 1
  " switch to regexp mode.
  let g:ctrlp_regexp = 0
  " set working path
  let g:ctrlp_working_path_mode = 'r'
  " exclude files and directories
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|node_modules|logs)$',
    \ 'file': '\v\.(log|swp|zip|png|jpg|ico)$',
    \ }

  " =========================================================
  " Configuration: terryma/vim-expand-region
  vmap v <Plug>(expand_region_expand)
  vmap <s-v> <Plug>(expand_region_shrink)


  " =========================================================
  " Configuration: terryma/vim-multiple-cursors
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_exit_from_insert_mode=1
  let g:multi_cursor_exit_from_visual_mode=1
  let g:multi_cursor_next_key='<C-g>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_prev_key='<C-e>'
  let g:multi_cursor_quit_key='<Esc>'


" =========================================================
  " Configuration: vim-scripts/ShowTrailingWhitespace
  command! -bar ShowTrailingWhitespaceOn  call ShowTrailingWhitespace#Set(1,1)
  command! -bar ShowTrailingWhitespaceOff call ShowTrailingWhitespace#Set(0,1)

  " =========================================================
  " Configuration: mileszs/ack.vim
  " Just like |:Ack| but instead of the |quickfix| list,
  " matches are placed in the current |location-list|.
  nnoremap <Leader>; :LAck!<Space>

  " =========================================================
  " Configuration: vim-go
  " commands
  au FileType go nmap <leader>r <Plug>(go-run)
  au FileType go nmap <leader>s <Plug>(go-callees)
  au FileType go nmap <leader>d <Plug>(go-def)
  au FileType go nmap <leader>f <Plug>(go-referrers)
  au FileType go nmap <leader>g <Plug>(go-implements)
  au FileType go nmap <leader>m <Plug>(go-metalinter)
  au FileType go nmap <leader>i :GoImpl<cr>
  au FileType go nmap <leader>o :GoDecls<cr>
  au FileType go nmap <leader>p :GoDeclsDir<cr>
  au FileType go nmap <leader>v :GoFillStruct<cr>
  au FileType go nmap <leader>e :GoDiagnostics!<cr>
  au FileType go nmap <leader>n :GoRemoveTags<CR>:GoAddTags json<CR>

  " disable <C-t> https://github.com/fatih/vim-go/issues/1202
  let g:go_def_mapping_enabled = 0

  " Specifies the `gopls` diagnostics level. Valid values are 0, 1, and 2. 0
  " ignores `gopls` diagnostics, 1 is for errors only, and 2 is for errors and
  " warnings. By default it is 0.
  let g:go_diagnostics_level = 2

  " auto |:GoMetaLinter| on save
  let g:go_metalinter_autosave = 0

" the command to be executed when |:GoMetaLinter| is called
  let g:go_metalinter_command = "golangci-lint"
  " Specifies the enabled linters for auto |:GoMetaLinter| on save. By
  " default it's using `vet` and `golint`.
  let g:go_metalinter_autosave_enabled = ['unconvert', 'megacheck', 'structcheck', 'gas', 'dupl',]
  " Specifies the linters to enable for the |:GoMetaLinter| command. By default
  " it's using `vet`, `golint` and `errcheck`.
  let g:go_metalinter_enabled = ['unconvert', 'megacheck', 'structcheck', 'gas', 'dupl', 'misspell']
  " Sets go_guru_scope to the entire workspace
  let g:go_guru_scope = []

  " [quickfix vs location list](https://github.com/fatih/vim-go/issues/696)
  let g:go_list_type = 'locationlist'
  " syntax-highlighting for Functions, Methods and Structs
  let g:go_highlight_function_calls = 1
  let g:go_highlight_function_parameters = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_variable_assignments = 1
  let g:go_highlight_format_strings = 1

  " auto fmt on save
  let g:go_fmt_autosave = 1
  " Enable goimports to automatically insert import paths instead of gofmt
  let g:go_fmt_command = "goimports"
  " Use this option to define the command to be used for |:GoDef|. By default
  " `guru` is being used as it covers all edge cases. But one might also use
  " `godef` as it's faster. Current valid options are: `[guru, godef]` >
  let g:go_def_mode = 'gopls'

  " =========================================================

"   =========================================================
  " Configuration: majutsushi/tagbar
  nmap <C-b> :TagbarToggle<CR>
  let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports:1',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
  \ }

  let g:tagbar_type_markdown = {
          \ 'ctagstype' : 'markdown',
          \ 'kinds' : [
                  \ 'h:headings',
          \ ],
      \ 'sort' : 0
  \ }



" =========================================================

  " =========================================================
  " Configuration: sebdah/vim-delve
  nmap <Leader>tb :DlvToggleBreakpoint<cr>
  nmap <Leader>tc :DlvClearAll<cr>
  nmap <Leader>tt :DlvTest<cr>
  nmap <Leader>tr :DlvDebug --<space>

  " =========================================================
  " Configuration: tpope/vim-fugitive
  nmap <leader>b :Gblame<CR>

  " =========================================================

  " =========================================================

  " =========================================================
  " Configuration: suan/vim-instant-markdown
  let g:instant_markdown_autostart = 0
  au FileType markdown nmap <leader>p :InstantMarkdownPreview<cr>

  " =========================================================
  set complete=.,w,b,u,i,kspell " completeopt
  " Configuration: mzlogin/vim-markdown-toc
  au FileType markdown nmap <leader>o :GenTocGFM<cr>

  " =========================================================

  " =========================================================
  " =========================================================

  " =========================================================
  " Configuration ivalkeen/vim-ctrlp-tjump
  " python jump to definition
  command! Stjump execute 'stjump' expand('<cword>')
  au FileType python nmap <leader>m :!ctags --languages=Python -R -f ./tags $(pipenv --venv) .<CR>
  au FileType python nmap <leader>s :Stjump<CR>
  au FileType python nmap <leader>d :CtrlPtjump<CR>

let g:ctrlp_use_caching = 0
let g:session_autosave = 'no'

" clear whitespace
autocmd BufWritePre * %s/\s\+$//e


" disables auto commenting
autocmd FileType * setlocal formatoptions=c formatoptions=r formatoptions=o

" For the cursor
let g:beacon_enable = 1

" nerdtree
let NERDTreeChDirMode = 2
let NERDTreeChDirMode = 1
noremap <leader>n :NERDTreeToggle<CR>

" cntrlp
let g:ctrlp_cache_dir = '/$HOME/.cache/ctrlp'
let g:ctrlp_cmd = 'CtrlPCurWd'
let g:ctrlp_max_height = 30




" esc keymap
inoremap jj  <esc>

" Map leader key
let mapleader = '<space>'


" replace all is aliased to s
nnoremap S :%s//g<left><left>

" switch between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" tab control
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<CR>
nnoremap tn :tabnext<CR>
nnoremap tm : tabm<CR>
nnoremap td :tabclose<CR>

command! W :w


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
noremap <leader>h :wicmd h<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l ;wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
noremap <leader>ps :Rg<SPACE>;

" Swap current line with lower line
map <leader>x ddp

" Toggle spellchecker
map <leaders :setlocal spell!<CR>

"  Enable and disable auto indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

"}}}



" colors scheme and hihlights {{{

let g:rainbow_active = 1

let g:rainbow_load_separately = [
        \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"colorscheme orange
"set background=dark


"colorscheme navajo-night
"set background=light

"colorscheme navajo   "space-nvim MountainDew
"set background=light



" colors



"set background=dark
"colorscheme melange

  " Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 300
endfunction



set background=dark
colorscheme gruvbox-material

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 250)) / 1000

return l:brightness > 300
endfunction




"set background=dark
"colorscheme gruvbox
" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 155
endfunction



" set background=light
" colorscheme everforest


"set background=dark
"colorscheme shades_of_purple

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1','g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1','g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 72
endfunction



"set background=dark
"colorscheme seoul256





"set background=dark
"colorscheme badwolf

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1','g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1','g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 155
endfunction




"set background=dark
"colorscheme ayu



"set background=dark
"colorscheme uwu


"set background=dark
"colorscheme robinhood

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1','g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 75
endfunction




"set background=light
"colorscheme summerfruit256

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1','g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1' 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 155
endfunction





"set background=dark
"colorscheme red_alert

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 300
endfunction



"set background=light
"colorscheme biogoo

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
let l:raw_color = trim(a:color, '#')

let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

return l:brightness > 155
endfunction





let g:limelight_conceal_ctermfg = 'Red'
let g:limelight_conceal_ctermfg = 240

highlight StatusLine guibg=Red guifg=Yellow cterm=bold


highlight Normal ctermbg=NONE
highlight Folded cterm=bold ctermbg=Black ctermfg=White

highlight Comment cterm=italic cterm=bold
highlight CursorLine guibg=Purple cterm=Underline

highlight ColorColumn ctermbg=1 guibg=Purple cterm=bold
highlight CursorLineNr ctermbg=White cterm=bold ctermfg=Black
highlight LineNr ctermbg=Yellow ctermfg=White

highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap ctermbg=None ctermbg=None
highlight SpellRare ctermbg=None ctermfg=None
highlight SpellLocal cterm=Underline ctermbg=None

















"}}}





