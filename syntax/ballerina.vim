if exists("b:current_syntax")
	finish
endif


syntax keyword balModifiers public private external final remote const const
syntax keyword balTypes int byte float decimal boolean string error map json xml table stream any typedesc type future anydata handle var never readonly
syntax keyword balTypes function
syntax keyword balConditions if else while foreach for
syntax keyword balIs is in 
syntax keyword balImport import returns return
syntax keyword balObject object record
syntax keyword balFunc resource worker init main panic
syntax keyword balIOFunc "\vio:\*"
syntax match balOperator "\v\*"
syntax match balOperator "\v\|"
syntax match balOperator "\v/"
syntax match balOperator "\v\+"
syntax match balOperator "\v-"
syntax match balOperator "\v\?"
syntax match balOperator "\v\|"
syntax match balOperator "\v\%"
syntax match balOperator "\v\*\="
syntax match balOperator "\v/\="
syntax match balOperator "\v\!\=\="
syntax match balOperator "\v\!\="
syntax match balOperator "\v\+\="
syntax match balOperator "\v-\="
syntax match balOperator "\v\="
syntax region balString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region balComment start=/\v(\/\/|#)/ skip=/\v\\./ end=/\v\_$/

highlight link balModifiers Keyword
highlight link balOperator Operator
highlight link balIs Operator
highlight link balTypes Type
highlight link balImport Identifier
highlight link balObject Keyword
highlight link balFunc Function
highlight link balIOFunc Function
highlight link balComment Comment
highlight link balString String
highlight link balConditions Statement

" learn more about plugin dev - link - http://learnvimscriptthehardway.stevelosh.com/
" learn about groups :help group-name


let b:current_syntax = "ballerina"
