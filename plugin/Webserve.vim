if exists('g:loaded_Webserve') && !has('docker-compose')
  finish
endif
let g:loaded_Webserve = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 StartWebServe call WebServe#start()
command! -nargs=0 StopWebServe call WebServe#stop()
command! -nargs=0 EditHtml call WebServe#edit()

let &cpo = s:save_cpo
unlet s:save_cpo
