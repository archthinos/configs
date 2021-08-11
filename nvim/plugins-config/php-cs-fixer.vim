" https://github.com/stephpy/vim-php-cs-fixer


let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = '.php_cs'

let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
