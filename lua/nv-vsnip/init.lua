vim.cmd([[
  imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
  smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
  imap <expr> <C-ö>   vsnip#available(1)  ? '<Plug>(vsnip-jump-prev)' : '<C-ö>'
  smap <expr> <C-ö>   vsnip#available(1)  ? '<Plug>(vsnip-jump-prev)' : '<C-ö>'
]])
