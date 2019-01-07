if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\."
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

syntax match potionNumber "\<-\=\d\+\%([Ee][-+]\=\d\+\)\=\>"
syntax match potionNumber "\<-\=0[xX]\x\+\>"
syntax match potionNumber "\<-\=\d\+\.\d*\%([Ee][-+]\=\d\+\)\=\>"
syntax match potionNumber "\<-\=\.\d\+\%([Ee][-+]\=\d\+\)\=\>"

syn match potionEscapeOctal display contained "\\[0-7]\{3}"
syn match potionEscapeC display contained +\\[abfnrtv\\'"]+
syn match potionEscapeX display contained "\\x\x\{2}"
syn match potionEscapeU display contained "\\u\x\{4}"
syn match potionEscapeBigU display contained "\\U\x\{8}"

highlight def link potionEscapeOctal potionSpecialString
highlight def link potionEscapeC potionSpecialString
highlight def link potionEscapeX potionSpecialString
highlight def link potionEscapeU potionSpecialString
highlight def link potionEscapeBigU potionSpecialString

syntax region potionDoubleQuoteString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@potionSpecialString
syntax region potionSingleQuoteString start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=@potionSpecialString

highlight def link potionDoubleQuoteString potionString
highlight def link potionSingleQuoteString potionString

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionNumber Number
highlight link potionString String

let b:current_syntax = "potion"
