
scriptencoding utf-8
source ~/.config/nvim/plugins.vim

"   ____                           _    ___        _   _
"  / ___| ___ _ __   ___ _ __ __ _| |  / _ \ _ __ | |_(_) ___  _ __  ___
" | |  _ / _ \ '_ \ / _ \ '__/ _` | | | | | | '_ \| __| |/ _ \| '_ \/ __|
" | |_| |  __/ | | |  __/ | | (_| | | | |_| | |_) | |_| | (_) | | | \__ \
"  \____|\___|_| |_|\___|_|  \__,_|_|  \___/| .__/ \__|_|\___/|_| |_|___/
"                                           |_|

if has('autocmd') " Remain compatible with earlier versions
  augroup vimrc " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

set cursorline
set nocompatible
set number relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set numberwidth=2

set autoread
au FocusGained,BufEnter * :checktime


set scrolloff=10
set nohlsearch




let maplocalleader="\<space>"


set expandtab

" Fixes syntax highlighting from stopping
autocmd BufEnter * :syntax sync fromstart | set nohlsearch
autocmd FileType mail set textwidth=0 wrapmargin=0

"here a function was defined
function! s:twitvim_my_settings()
  "this function just do one thing, set nowrap option. (text is gonna be displayed without wrap.)
  set nowrap
endfunction



:lua << EOF

require'nvim-tree'.setup({
actions = {
    open_file = {
      window_picker = {
        enable = false,  -- Disable the annoying A/B window picker
      },
    },
  },
})


require("img-clip").setup ({
  -- use recommended settings from above
})


EOF







:lua << EOF
	require("notify").setup {
	background_colour = "#000000",
	render = "compact",
	top_down = false,
}

EOF


:lua << EOF

require('aider').setup({
  auto_manage_context = true,
  default_bindings = true
})

EOF



nnoremap <C-g>c <cmd>PrtChatNew<cr>
inoremap <C-g>c <cmd>PrtChatNew<cr>
vnoremap <C-g>c :<C-u>'<,'>PrtChatNew<cr>
nnoremap <C-g>t <cmd>PrtChatToggle<cr>
inoremap <C-g>t <cmd>PrtChatToggle<cr>
nnoremap <C-g>f <cmd>PrtChatFinder<cr>
inoremap <C-g>f <cmd>PrtChatFinder<cr>
nnoremap <C-g>r <cmd>PrtRewrite<cr>
inoremap <C-g>r <cmd>PrtRewrite<cr>
vnoremap <C-g>r :<C-u>'<,'>PrtRewrite<cr>
nnoremap <C-g>j <cmd>PrtRetry<cr>
nnoremap <C-g>a <cmd>PrtAppend<cr>
inoremap <C-g>a <cmd>PrtAppend<cr>
vnoremap <C-g>a :<C-u>'<,'>PrtAppend<cr>
nnoremap <C-g>o <cmd>PrtPrepend<cr>
inoremap <C-g>o <cmd>PrtPrepend<cr>
vnoremap <C-g>o :<C-u>'<,'>PrtPrepend<cr>
vnoremap <C-g>e :<C-u>'<,'>PrtEnew<cr>
nnoremap <C-g>s <cmd>PrtStop<cr>
inoremap <C-g>s <cmd>PrtStop<cr>
vnoremap <C-g>s <cmd>PrtStop<cr>
xnoremap <C-g>s <cmd>PrtStop<cr>
nnoremap <C-g>i :<C-u>'<,'>PrtComplete<cr>
inoremap <C-g>i :<C-u>'<,'>PrtComplete<cr>
vnoremap <C-g>i :<C-u>'<,'>PrtComplete<cr>
xnoremap <C-g>i :<C-u>'<,'>PrtComplete<cr>
nnoremap <C-g>x <cmd>PrtContext<cr>
nnoremap <C-g>n <cmd>PrtModel<cr>
nnoremap <C-g>p <cmd>PrtProvider<cr>
nnoremap <C-g>q <cmd>PrtAsk<cr>

:tnoremap <Esc> <C-\><C-n>

let g:vimwiki_list = [{'path': '~/Dropbox/NOTES/'}]
" Yank and paste with the system clipboard
set clipboard+=unnamedplus
" set transparent background
" Set floating window to be slightly transparent
" Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set smartcase
set ignorecase
set smartindent
set noswapfile
set nobackup
" this directory needs to be created
set undodir=~/.config/nvim/undodir
" incremental searching
set incsearch
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set cmdheight=1
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright
" Color
" hi=NONE guibg=NONE ctermbg=NONE
"colorscheme sonokai
"colorscheme fluoromachine
"colorscheme gruvbox-baby
colorscheme catppuccin-mocha

"highlight Normal ctermbg=none guibg=none guifg=White
"highlight NonText ctermbg=none guibg=none guifg=White

highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
highlight EndOfBuffer ctermbg=none ctermfg=none guibg=none guifg=none 
highlight CursorLine ctermbg=Black
highlight SignColumn ctermbg=none guibg=none guifg=White
" set winbl=10
" highlight Normal guibg=none
" highlight NonText guibg=none
" highlight Normal ctermbg=Black
" highlight NonText ctermbg=Black
" set winbl=10

if (has("termguicolors"))
	set termguicolors
endif
"  _  __          _     _           _ _
" | |/ /___ _   _| |__ (_)_ __   __| (_)_ __   __ _ ___
" | ' // _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` / __|
" | . \  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
" |_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |___/
"           |___/                             |___/
let mapleader = " "
let g:mapleader = " "
nnoremap <silent> <nowait> <leader>j :w<CR>
vnoremap <silent> <nowait> <leader>j :w<CR>
nnoremap <silent> <nowait> <leader>q <esc>:q!<CR>
vnoremap <silent> <nowait> <leader>q <esc>:q!<CR>
xnoremap <silent> <nowait> <leader>q <esc>:q!<CR>
"delete duplicate empty lines

nnoremap <silent> <nowait> <leader>l :g/^$/,/./-j<CR><c-o>
" tabs
nnoremap <silent> <nowait> <leader><tab> :tabn<CR>
nnoremap <silent> <nowait> <leader>t :tabedit<CR>
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
" nnoremap <leader>rw :CocSearch <C-R>=expand("<cword>")<CR><CR>
" center matches on screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" Because double pressing key is slow
nmap <silent> <nowait> <leader>d dd
vmap <silent> <nowait> <leader>d dd
nmap <silent> <nowait> <leader>g gg
vmap <silent> <nowait> <leader>g gg
nmap <silent> <nowait> <leader>y yy
vmap <silent> <nowait> <leader>y yy
nmap <silent> <nowait> <leader>z zz
vmap <silent> <nowait> <leader>z zz

nnoremap <Leader>cu :'<,'>ClaudeImplement<CR>


" remove previous WORD without exiting insert mode
inoremap <silent> <C-h> <esc>bcaW
" accept suggestion
" inoremap <C-space> <C-y>
" Quick window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" nmap <leader>y :StripWhitespace<CR>
map <Leader>l <Plug>(easymotion-bd-wl)
nmap <leader>k <Plug>(easymotion-bd-w)

noremap <F3> :Autoformat<CR>
" * and # search for next/previous of selected text when used in visual mode
xno * :<c-u>cal<SID>VisualSearch()<cr>/<cr>
xno # :<c-u>cal<SID>VisualSearch()<cr>?<cr>
fun! s:VisualSearch()
  let old = @" | norm! gvy
  let @/ = '\V'.substitute(escape(@", '\'), '\n', '\\n', 'g')
  let @" = old
endf
" remove empty lines in selection
vmap <leader>e :s/\n\n/\r/g<CR>
" nmap <leader>n <Plug>VimwikiNextLink
" nmap <leader>p <Plug>VimwikiPrevLink
nmap <F13> <Plug>VimwikiNextLink
nmap <F14> <Plug>VimwikiPrevLink
"nmap <leader>i <Plug>VimwikiIndex
" nmap <F15> <Plug>VimwikiAddHeaderLevel

" Fugitive bindings
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>
" mobile screenshot renaming
let @s='dt_xllla-lla-lllr lla_lla_0j'
" resizing splits
" autocmd VimResized * wincmd =

" autocmd VimResized * :exe 'vertical resize' . float2nr(&columns * 0.5) | exe resize . float2nr(&lines * 0.75)
autocmd WinEnter *.sc,*.scd :exe 'vertical resize' . float2nr(&columns * 0.5) | exe 'resize' . float2nr(&lines * 0.75)
autocmd VimResized *.sc,*.scd :exe 'vertical resize' . float2nr(&columns * 0.5) | exe 'resize' . float2nr(&lines * 0.75)

" autocmd WinResize * :exe 50wincmd |

" autocmd WinResize * 50wincmd
" autocmd WinResize * :exe vertical resize  . float2nr(&columns * 0.5) | exe resize  . float2nr(&lines * 0.75)
" autocmd WinEnter * :call ResizeSplits()
" autocmd WinResize * call ResizeSplits()

nmap <silent> <leader>ww <C-w>=
nnoremap <silent> <leader>wk :exe "resize " . float2nr(&lines * 0.75)<CR>
nnoremap <silent> <leader>wj :exe "resize " . float2nr(&lines * 0.25)<CR>
nmap <silent> <Leader>wh :vertical resize -20<CR>
nmap <silent> <Leader>wl :vertical resize +20<CR>

" exe "vertical resize " . float2nr(&columns * 0.5)

" jump to first / last of paragraph
set whichwrap+=b,s
set virtualedit=onemore
nnoremap { k{<Space>0
vnoremap { k{<Space>0
nnoremap } j}<BS>0
vnoremap } j}<BS>0

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fn <cmd>Telescope live_grep<cr>


"
" map <C-p> :Telescope find_files<CR>

"  _   _ _____ ____  ____ _____
" | \ | | ____|  _ \|  _ \_   _| __ ___  ___
" |  \| |  _| | |_) | | | || || '__/ _ \/ _ \
" | |\  | |___|  _ <| |_| || || | |  __/  __/
" |_| \_|_____|_| \_\____/ |_||_|  \___|\___|
"
" Add spaces after comment delimiters by default
" let NERDSpaceDelims=1
" Show hidden files/directories
" let g:NERDTreeShowHidden = 1
" enable line numbers
" let NERDTreeShowLineNumbers=1
" let NERDTreeMinimalUI=1
" let NERDTreeQuitOnOpen = 1
" make sure relative line numbers are used
" autocmd FileType nerdtree setlocal relativenumber
" let g:NERDTreeGitStatusWithFlags = 0
" let g:NERDTreeIgnore = ['^node_modules$']
" vmap <leader>; <plug>NERDCommenterToggle
" nmap <leader>; <plug>NERDCommenterToggle
" nmap <leader>h :NERDTreeToggle<CR>
" let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1
" let g:NERDCustomDelimiters = { 'text': { 'left': '"','right': '' } }
"       _        _
"   ___| |_ _ __| |_ __
"  / __| __| '__| | '_ \
" | (__| |_| |  | | |_) |
"  \___|\__|_|  |_| .__/
"                 |_|
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"  ____            _         ____      _            _       _
" | __ )  __ _ ___(_) ___   / ___|__ _| | ___ _   _| | __ _| |_ ___  _ __
" |  _ \ / _` / __| |/ __| | |   / _` | |/ __| | | | |/ _` | __/ _ \| '__|
" | |_) | (_| \__ \ | (__  | |__| (_| | | (__| |_| | | (_| | || (_) | |
" |____/ \__,_|___/_|\___|  \____\__,_|_|\___|\__,_|_|\__,_|\__\___/|_|
"
vnoremap <leader>r "ey:call CalcBC()<CR>
function! CalcBC()
  let has_equal = 0
  " remove newlines and trailing spaces
  let @e = substitute (@e, "\n", "", "g")
  let @e = substitute (@e, '\s*$', "", "g")
  " if we end with an equal, strip, and remember for output
  if @e =~ "=$"
    let @e = substitute (@e, '=$', "", "")
    let has_equal = 1
  endif
  " sub common func names for bc equivalent
  let @e = substitute (@e, '\csin\s*(', "s (", "")
  let @e = substitute (@e, '\ccos\s*(', "c (", "")
  let @e = substitute (@e, '\catan\s*(', "a (", "")
  let @e = substitute (@e, "\cln\s*(", "l (", "")
  " escape chars for shell
  let @e = escape (@e, '*()')
  " run bc, strip newline
  let answer = substitute (system ("echo " . @e . " \| bc -l"), "\n", "", "")
  " append answer or echo
  if has_equal == 1
    normal `>
    exec "normal a" . answer
  else
    echo "answer = " . answer
  endif
endfunction
"   ____                                           __    ____                      _      _   _
"  / ___|___  _ __   __ _ _   _  ___ _ __    ___  / _|  / ___|___  _ __ ___  _ __ | | ___| |_(_) ___  _ __
" | |   / _ \| '_ \ / _` | | | |/ _ \ '__|  / _ \| |_  | |   / _ \| '_ ` _ \| '_ \| |/ _ \ __| |/ _ \| '_ \
" | |__| (_) | | | | (_| | |_| |  __/ |    | (_) |  _| | |__| (_) | | | | | | |_) | |  __/ |_| | (_) | | | |
"  \____\___/|_| |_|\__, |\__,_|\___|_|     \___/|_|    \____\___/|_| |_| |_| .__/|_|\___|\__|_|\___/|_| |_|
"                      |_|                                                  |_|
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-vetur',
  \ ]
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'scnvim-data']
let g:scnvim_sclang_executable = '/usr/bin/sclang'
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
nmap <leader>f :Prettier<CR>
" Fix autofix problem of current line
" nmap <leader>qf  <Plug>(coc-fix-current)
"nmap <leader>a <Plug>(coc-fix-current)
" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)
" Using CocList Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
" if has('nvim')
  " inoremap <silent><expr> <c-space> coc#refresh()
" else
  " inoremap <silent><expr> <c-@> coc#refresh()
" endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>af  <Plug>(coc-fix-current)
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <leader>ca  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>co  :<C-u>CocList outline<cr>
" Search workleader symbols.
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>cn  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>cp  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

" coc snippet bindings
let g:UltiSnipsExpandTrigger='<Nop>'
let g:UltiSnipsJumpForwardTrigger = '<TAB>'
let g:UltiSnipsJumpBackwardTrigger = '<S-TAB>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" latex
let g:livepreview_previewer = 'zathura'


nmap <silent> <Leader>c <Plug>(coc-diagnostic-next-error)
nmap <silent> <Leader>v <Plug>(coc-diagnostic-prev-error)


"  ____                         ____      _ _ _     _
" / ___| _   _ _ __   ___ _ __ / ___|___ | | (_) __| | ___ _ __
" \___ \| | | | '_ \ / _ \ '__| |   / _ \| | | |/ _` |/ _ \ '__|
"  ___) | |_| | |_) |  __/ |  | |__| (_) | | | | (_| |  __/ |
" |____/ \__,_| .__/ \___|_|   \____\___/|_|_|_|\__,_|\___|_|
"             |_|
"
au BufEnter,BufWinEnter,BufNewFile,BufRead *.sc,*.scd set filetype=supercollider
" au Filetype supercollider packadd scvim
let g:sclangTerm = "st -e zsh -ic"
" let g:scFlash = 1
nmap <silent><nowait> <CR> <Plug>(scnvim-send-block)
vmap <silent><nowait> <CR> <Plug>(scnvim-send-selection)
nmap <silent><nowait> <leader>. <Plug>(scnvim-hard-stop)
" map <silent><nowait> <leader>p <Plug>(scnvim-postwindow-toggle)
map <silent><nowait> <leader>b <Plug>(scnvim-hard-stop)
nmap <silent><nowait> <leader>p <Plug>(scnvim-postwindow-clear)
map <silent><nowait> <leader>s :SCNvimStart<CR>
" vertical 'v' or horizontal 'h' split
let g:scnvim_postwin_orientation = 'h'
" position of the post window 'right' or 'left'
let g:scnvim_postwin_direction = 'right'
" default is half the terminal size for vertical and a third for horizontal
let g:scnvim_postwin_size = 15
" automatically open post window on a SuperCollider error
let g:scnvim_postwin_auto_toggle = 1
" duration of the highlight
let g:scnvim_eval_flash_duration = 25
" set this variable to browse SuperCollider documentation in nvim (requires `pandoc`)
let g:scnvim_scdoc = 1
" number of flashes. A value of 0 disables this feature.
let g:scnvim_eval_flash_repeats = 1
" configure the color
highlight SCNvimEval guifg=black guibg=cyan ctermfg=black ctermbg=cyan
autocmd BufRead,BufWritePre *.sc normal magg=G`a
autocmd BufRead,BufWritePre *.scd normal magg=G`a

autocmd BufWritePost *.fountain silent! !afterwriting --overwrite --source <afile> --pdf %:r.pdf

" path to the sclang executable
" scnvim will look in some known locations for sclang, but if it can't find it use this variable instead
" (also improves startup time slightly)
let g:scnvim_sclang_executable = ''
" update rate for server info in status line (seconds)
" (don't set this to low or vim will get slow)
let g:scnvim_statusline_interval = 1
" set this variable if you don't want the "echo args" feature
let g:scnvim_echo_args = 0
" set this variable if you don't want any default mappings
let g:scnvim_no_mappings = 1
" set this variable to browse SuperCollider documentation in nvim (requires `pandoc`)
let g:scnvim_scdoc = 1
" pass flags directly to sclang - see help file for more details, caveats, and further examples
let g:scnvim_sclang_options = ['-u', 9999]
" help
let g:scnvim_scdoc_render_prg = '/usr/bin/pandoc'
" let g:scnvim_scdoc_render_args = '% -o %'
"
"" use [h and ]h to navigate between holes
nnoremap <silent> [h :<C-U>call CocActionAsync('diagnosticPrevious', 'hint')<CR>
nnoremap <silent> ]h :<C-U>call <SID>JumpToNextHole()<CR>

" <leader>d to perform a pattern match, <leader>n to fill a hole
nnoremap <silent> <leader>d  :<C-u>set operatorfunc=<SID>WingmanDestruct<CR>g@l
nnoremap <silent> <leader>n  :<C-u>set operatorfunc=<SID>WingmanFillHole<CR>g@l
nnoremap <silent> <leader>r  :<C-u>set operatorfunc=<SID>WingmanRefine<CR>g@l
nnoremap <silent> <leader>c  :<C-u>set operatorfunc=<SID>WingmanUseCtor<CR>g@l
"nnoremap <silent> <leader>a  :<C-u>set operatorfunc=<SID>WingmanDestructAll<CR>g@l

autocmd BufWritePost *.c make

function! s:JumpToNextHole()
  call CocActionAsync('diagnosticNext', 'hint')
endfunction

function! s:GotoNextHole()
  " wait for the hole diagnostics to reload
  sleep 500m
  " and then jump to the next hole
  normal 0
  call <SID>JumpToNextHole()
endfunction

function! s:WingmanRefine(type)
  call CocAction('codeAction', a:type, ['refactor.wingman.refine'])
  call <SID>GotoNextHole()
endfunction

function! s:WingmanDestruct(type)
  call CocAction('codeAction', a:type, ['refactor.wingman.caseSplit'])
  call <SID>GotoNextHole()
endfunction

function! s:WingmanDestructAll(type)
  call CocAction('codeAction', a:type, ['refactor.wingman.splitFuncArgs'])
  call <SID>GotoNextHole()
endfunction

function! s:WingmanFillHole(type)
  call CocAction('codeAction', a:type, ['refactor.wingman.fillHole'])
  call <SID>GotoNextHole()
endfunction

function! s:WingmanUseCtor(type)
  call CocAction('codeAction', a:type, ['refactor.wingman.useConstructor'])
  call <SID>GotoNextHole()
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

filetype plugin indent on

syntax enable



filetype plugin indent on



let g:vimtex_compiler_latexmk_engines = {'_': '-lualatex'}

nnoremap <leader>ch :ChatGPT<CR>
nnoremap <leader>cy :ChatGPTEditWithInstructions<CR>



:lua << EOF

local Utils = require("avante.utils")

local M = {}

M.defaults = {
  debug = false,
  provider = "claude", -- Only recommend using Claude
  auto_suggestions_provider = "claude",
  tokenizer = "tiktoken",
  system_prompt = [[
You are an excellent programming expert.
]],
  openai = {
    endpoint = "https://api.openai.com/v1",
    model = "o1-preview",
    timeout = 1200000, -- Timeout in milliseconds
    temperature = 1,
    max_tokens = 4096,
    ["local"] = false,
  },
  copilot = {
    endpoint = "https://api.githubcopilot.com",
    model = "gpt-4o-2024-05-13",
    proxy = nil, -- [protocol://]host[:port] Use this proxy
    allow_insecure = false, -- Allow insecure server connections
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 4096,
  },
  azure = {
    endpoint = "", -- example: "https://<your-resource-name>.openai.azure.com"
    deployment = "", -- Azure deployment name (e.g., "gpt-4o", "my-gpt-4o-deployment")
    api_version = "2024-06-01",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 4096,
    ["local"] = false,
  },
  claude = {
    endpoint = "https://api.anthropic.com",
    model = "claude-3-5-sonnet-20240620",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 8000,
    ["local"] = false,
  },
  gemini = {
    endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
    model = "gemini-1.5-flash-latest",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 4096,
    ["local"] = false,
  },
  cohere = {
    endpoint = "https://api.cohere.com/v1",
    model = "command-r-plus-08-2024",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 4096,
    ["local"] = false,
  },
  vendors = {},
  behaviour = {
    auto_suggestions = false, -- Experimental stage
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
    support_paste_from_clipboard = false,
  },
  history = {
    storage_path = vim.fn.stdpath("state") .. "/avante",
    paste = {
      extension = "png",
      filename = "pasted-%Y-%m-%d-%H-%M-%S",
    },
  },
  highlights = {
    diff = {
      current = "DiffText",
      incoming = "DiffAdd",
    },
  },
  mappings = {
    diff = {
      ours = "co",
      theirs = "ct",
      all_theirs = "ca",
      both = "cb",
      cursor = "cc",
      next = "]x",
      prev = "[x",
    },
    suggestion = {
      accept = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
    jump = {
      next = "]]",
      prev = "[[",
    },
    submit = {
      normal = "<CR>",
      insert = "<C-s>",
    },
    ask = "<leader>aa",
    edit = "<leader>ae",
    refresh = "<leader>ar",
    toggle = {
      default = "<leader>at",
      debug = "<leader>ad",
      hint = "<leader>ah",
      suggestion = "<leader>as",
    },
    sidebar = {
      switch_windows = "<Tab>",
      reverse_switch_windows = "<S-Tab>",
    },
  },
  windows = {
    position = "right",
    wrap = true, -- similar to vim.o.wrap
    width = 30, -- default % based on available width in vertical layout
    height = 30, -- default % based on available height in horizontal layout
    sidebar_header = {
      align = "center", -- left, center, right for title
      rounded = true,
    },
    input = {
      prefix = "> ",
    },
    edit = {
      border = "rounded",
    },
  },
  diff = {
    autojump = true,
  },
  hints = {
    enabled = true,
  },
}

---@type avante.Config
M.options = {}

---@class avante.ConflictConfig: AvanteConflictConfig
---@field mappings AvanteConflictMappings
---@field highlights AvanteConflictHighlights
M.diff = {}

---@type Provider[]
M.providers = {}

---@param opts? avante.Config
function M.setup(opts)
  vim.validate({ opts = { opts, "table", true } })

  M.options = vim.tbl_deep_extend(
    "force",
    M.defaults,
    opts or {},
    ---@type avante.Config
    {
      behaviour = {
        support_paste_from_clipboard = M.support_paste_image(),
      },
    }
  )
  M.providers = vim
    .iter(M.defaults)
    :filter(function(_, value) return type(value) == "table" and value.endpoint ~= nil end)
    :fold({}, function(acc, k)
      acc = vim.list_extend({}, acc)
      acc = vim.list_extend(acc, { k })
      return acc
    end)

  vim.validate({ provider = { M.options.provider, "string", false } })

  M.diff = vim.tbl_deep_extend(
    "force",
    {},
    M.options.diff,
    { mappings = M.options.mappings.diff, highlights = M.options.highlights.diff }
  )

  if next(M.options.vendors) ~= nil then
    for k, v in pairs(M.options.vendors) do
      M.options.vendors[k] = type(v) == "function" and v() or v
    end
    vim.validate({ vendors = { M.options.vendors, "table", true } })
    M.providers = vim.list_extend(M.providers, vim.tbl_keys(M.options.vendors))
  end
end

---@param opts? avante.Config
function M.override(opts)
  vim.validate({ opts = { opts, "table", true } })

  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
  M.diff = vim.tbl_deep_extend(
    "force",
    {},
    M.options.diff,
    { mappings = M.options.mappings.diff, highlights = M.options.highlights.diff }
  )

  if next(M.options.vendors) ~= nil then
    for k, v in pairs(M.options.vendors) do
      M.options.vendors[k] = type(v) == "function" and v() or v
      if not vim.tbl_contains(M.providers, k) then M.providers = vim.list_extend(M.providers, { k }) end
    end
    vim.validate({ vendors = { M.options.vendors, "table", true } })
  end
end

M = setmetatable(M, {
  __index = function(_, k)
    if M.options[k] then return M.options[k] end
  end,
})

function M.support_paste_image()
  return Utils.has("img-clip.nvim") or Utils.has("img-clip")
end

function M.get_window_width()
  return math.ceil(vim.o.columns * (M.windows.width / 100))
end

---@param provider Provider
---@return boolean
function M.has_provider(provider)
  return M.options[provider] ~= nil or M.vendors[provider] ~= nil
end

---@param provider Provider
---@return AvanteProviderFunctor
function M.get_provider(provider)
  if M.options[provider] ~= nil then
    return vim.deepcopy(M.options[provider], true)
  elseif M.vendors[provider] ~= nil then
    return vim.deepcopy(M.vendors[provider], true)
  else
    error("Failed to find provider: " .. provider, 2)
  end
end

M.BASE_PROVIDER_KEYS = {
  "endpoint",
  "model",
  "deployment",
  "api_version",
  "proxy",
  "allow_insecure",
  "api_key_name",
  "timeout",
  -- internal
  "local",
  "_shellenv",
  "tokenizer_id",
  "use_xml_format",
}

require("avante").setup(M.defaults)
require("avante_lib").load()

-- Setup for 'img-clip.nvim'
require('img-clip').setup({
  default = {
    embed_image_as_base64 = false,
    prompt_for_file_name = false,
    drag_and_drop = {
      insert_mode = true,
    },
    -- Required for Windows users
    use_absolute_path = true,
  },
})


require("here-term").setup({
    -- The command we run when exiting the terminal and no other buffers are listed. An empty
    -- buffer is shown by default. 
    startup_command = "enew", -- Startify, Dashboard, etc. Make sure it has been loaded before `here.term`.

    -- Mappings
    -- Every mapping bellow can be customized by providing your preferred combo, or disabled
    -- entirely by setting them to `nil`.
    --
    -- The minimal mappings used to toggle and kill the terminal. Available in
    -- `normal` and `terminal` mode.
    mappings = {
    },
    -- Additional mappings that I consider useful since you won't have to escape (<C-\><C-n>)
    -- the terminal each time. Available in `terminal` mode.
    extra_mappings = {
        enable = true, -- Disable them entirely
        escape = "<C-x>", -- Escape terminal mode
        left = "<C-w>h", -- Move to the left window
        down = "<C-w>j", -- Move to the window down
        up = "<C-w>k", -- Move to the window up
        right = "<C-w>l", -- Move to right window
    },
})


require('render-markdown').setup({
opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
})


EOF

function! s:GetTaskID(task_output)
    " Extract task ID from task add output
    let l:id_match = matchlist(a:task_output, '\v^Created task (\d+)\.')
    if len(l:id_match) > 1
        return l:id_match[1]
    endif
    return ''
endfunction

function! s:GetCurrentFilePath()
    " Get absolute path of current buffer
    return expand('%:p')
endfunction

function! s:AnnotateTask(id, filepath)
    " Add file annotation to specified task
    let l:cmd = 'task ' . a:id . ' annotate "File: ' . a:filepath . '"'
    return system(l:cmd)
endfunction

function! s:SelectTask(tasks)
    " Display tasks and get user selection
    let l:lines = split(a:tasks, '\n')
    let l:prompt = "Select task number (or press Enter to cancel): "
    let l:selection = input(l:prompt)
    
    if l:selection == ''
        return ''
    endif
    
    " Extract ID from the selected task line
    let l:id_match = matchlist(l:lines[l:selection], '\v^\s*(\d+)')
    if len(l:id_match) > 1
        return l:id_match[1]
    endif
    return ''
endfunction

function! MakeTask(...)
    " Combine all arguments into task description
    let l:task_args = join(a:000, ' ')
    
    " Add task and get output
    let l:add_output = system('task add ' . shellescape(l:task_args))
    echo l:add_output
    
    " Get task ID and current file path
    let l:task_id = s:GetTaskID(l:add_output)
    let l:filepath = s:GetCurrentFilePath()
    
    if l:task_id != ''
        " Annotate task with file path
        let l:annotate_output = s:AnnotateTask(l:task_id, l:filepath)
        echo l:annotate_output
    else
        echoerr "Could not determine task ID from output"
    endif
endfunction

function! LinkTask()
    " Get task list
    let l:tasks = system('task next')
    echo l:tasks
    
    " Get user selection
    let l:selected_id = s:SelectTask(l:tasks)
    
    if l:selected_id != ''
        " Annotate selected task with current file
        let l:filepath = s:GetCurrentFilePath()
        let l:annotate_output = s:AnnotateTask(l:selected_id, l:filepath)
        echo l:annotate_output
    endif
endfunction

" Command definitions
command! -nargs=+ MakeTask call MakeTask(<f-args>)
command! LinkTask call LinkTask()


nnoremap <leader>h <cmd>NvimTreeToggle<cr>



" Ulysses command mapping
