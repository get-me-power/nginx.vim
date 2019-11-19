if exists('g:loaded_Webserve')
  finish
endif
let g:loaded_Webserve = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 StartWebServe call WebServe#start()
command! -nargs=0 StopWebServe call WebServe#stop()

let &cpo = s:save_cpo
unlet s:save_cpo
