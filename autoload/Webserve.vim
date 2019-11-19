scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function!  WebServe#start() abort
  echo system('docker-compose up -d')
endfunction

function! WebServe#stop() abort
  echo system('docker-compose down')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
