if exists("b:current_syntax")
	finish
endif


syntax keyword balModifiers public private external final remote const const
syntax keyword balTypes int byte float decimal boolean string error map json xml table stream any typedesc type future anydata handle 
syntax keyword balConditions if else while foreach for
syntax keyword balImport import
syntax keyword balFunc function resource worker
syntax match balComment "\v//.*$"
syntax match balOperator "\v\*"
syntax match balOperator "\v/"
syntax match balOperator "\v\+"
syntax match balOperator "\v-"
syntax match balOperator "\v\?"
syntax match balOperator "\v\*\="
syntax match balOperator "\v/\="
syntax match balOperator "\v\+\="
syntax match balOperator "\v-\="
syntax match balOperator "\v\="
syntax region balString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link balModifiers Keyword
highlight link balOperator Operator
highlight link balTypes Type
highlight link balImport Identifier
highlight link balFunc Function
highlight link balComment Comment
highlight link balString String
highlight link balConditions Statement

" learn more about plugin dev - link - http://learnvimscriptthehardway.stevelosh.com/
" learn about groups :help group-name


let b:current_syntax = "ballerina"
