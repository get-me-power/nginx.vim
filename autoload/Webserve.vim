scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

let s:filepath = expand('<sfile>:h:h') . '/html/index.html'

function WebServe#edit()
  :execute ":edit " . escape(s:filepath, ' ')
endfunction

function!  WebServe#start() abort
  echo system('docker-compose up -d')
endfunction

function! WebServe#stop() abort
  echo system('docker-compose down')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
