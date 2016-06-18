echo "hoge"
if match(expand('%:p'), '\<tests\?\>')
  let s:wd = expand('%:h)
  let s:mocha_path = system('PATH=$(cd '. shellescape(s:wd) .' && npm bin):$PATH && which mocha')
  if !empty(s:mocha_path)
    let b:quickrun_config = get(get(g:, 'quickrun_config', {}), 'javascript/mocha', {})
    let b:quickrun_config.command = s:mocha_path
  endif
endif


