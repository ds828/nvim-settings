" linters
"let g:ale_linters = {
      \ 'python': ['pylint'],
      \ 'javascript': ['eslint'],
      \ 'go': ['gopls'],
      \}
" fixers
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'python': ['isort', 'yapf'],
      \ 'javascript': ['eslint'],
      \}

let g:ale_completion_autoimport = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%][%severity%] %s'
