let g:ale_python_pylint_executable = "./venv/bin/pylint"
let g:ale_python_vulture_executable = "./venv/bin/vulture"

function! s:run()
	let l:t = AQAppend("!python ./main.py")
	call AQAppendOpen()
endfunction

command! -nargs=0 RUN call s:run()

nnoremap <leader><leader>r :RUN<cr>
