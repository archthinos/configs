" ===================== Visual Move settings ================= "
let g:MvVis_mappings = 0
vmap H <Plug>(MvVisLeft)
vmap L <Plug>(MvVisRight)
vmap J <Plug>(MvVisDown)
vmap K <Plug>(MvVisUp)

au BufWritePre * :%s/\s\+$//e                           " remove trailing whitespaces before saving
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines


