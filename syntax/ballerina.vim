if exists("b:current_syntax")
	finish
endif


syntax keyword balModifiers public private external final remote const
syntax keyword balTypes int byte float decimal boolean string error json xml any typedesc type future anydata handle var never readonly error
syntax keyword balTypes function xmlns listener service
syntax keyword balStructure map table stream enum
syntax keyword balTypedef type
syntax keyword balConditions if else match
syntax keyword balBranch continue break fork wait
syntax keyword balRepeat while foreach
syntax keyword balIs is in 
syntax keyword balImport import returns
syntax keyword balStatement return start lock
syntax keyword balObject object record
syntax keyword balFunc resource worker
syntax keyword balBoolean true false
syntax keyword balException panic trap
syntax match balTypes "\v(xml|(\w*)):(Element|ProcessingInstruction|Comment)"
syntax match balFunctionCall "\zs\(\k\w*:\)*\(\k\w*\)*\s*\ze("
syntax match balOperator "\v\*"
syntax match balOperator "\v\|"
syntax match balOperator "\v/"
syntax match balOperator "\v\+"
syntax match balOperator "\v[^\<]-[^\>]"
syntax match balOperator "\v\?"
syntax match balOperator "\v\|"
syntax match balOperator "\v\%"
syntax match balOperator "\v\*\="
syntax match balOperator "\v/\="
syntax match balOperator "\v\!\=\="
syntax match balOperator "\v\!\="
syntax match balOperator "\v\+\="
syntax match balOperator "\v-\="
syntax match balOperator "\v\=[^\>]"
syntax match balLabel    "\v\=\>"
syntax match balLabel    "\v\<-"
syntax match balLabel    "\v-\>"
syntax region balString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region balComment start=/\v(\/\/|#)/ skip=/\v\\./ end=/\v\_$/
syntax match balNumber "\v<\d+>"
syntax match balFloat "\v<\d+.\d+>"

highlight def link balModifiers     Keyword
highlight def link balOperator      Operator
highlight def link balIs            Operator
highlight def link balTypes         Type
highlight def link balImport        Identifier
highlight def link balFunc          Function
highlight def link balFunctionCall  Function
highlight def link balComment       Comment
highlight def link balString        String
highlight def link balConditions    Conditional
highlight def link balBranch        Conditional
highlight def link balStatement     Statement
highlight def link balNumber        Number
highlight def link balFloat         Float
highlight def link balBoolean       Boolean
highlight def link balTypedef       Typedef
highlight def link balStructure     Structure
highlight def link balObject        Structure
highlight def link balImport        Include
highlight def link balException     Exception
highlight def link balRepeat        Repeat
highlight def link balLabel         Label
" highlight def link Todo        Todo


" learn more about plugin dev - link - http://learnvimscriptthehardway.stevelosh.com/
" learn about groups :help group-name


let b:current_syntax = "ballerina"
