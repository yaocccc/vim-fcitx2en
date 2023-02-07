if exists('s:loaded')
  finish
endif
let s:loaded = 1
let s:fcitx_on_events = get(g:, 'fcitx_on_events', 'InsertLeave')
let s:f_status = system("fcitx-remote")
let s:cmd = s:f_status == 1 || s:f_status == 2 ? "fcitx-remote" : "fcitx5-remote"

func! s:fcitx2en()
   let l:lang = system(s:cmd)
   if l:lang == 2
      call system(printf("%s -c", s:cmd))
   endif
endf

call execute('autocmd ' . s:fcitx_on_events . ' * call <SID>fcitx2en()')
