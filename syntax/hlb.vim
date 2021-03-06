" HLB syntax file
" Language:     HLB
" Maintainer:   Edgar Lee <edgarl@netflix.com>
" Last Change:  2020 Jan 10
" Version:      0.1
"

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword     hlbKeyword       with
syn keyword     hlbKeyword       as

syn keyword     hlbType          string
syn keyword     hlbType          int
syn keyword     hlbType          bool
syn keyword     hlbType          state frontend
syn keyword     hlbType          option

syn keyword     hlbBoolean       true false

" Comments
syn match       hlbComment       "\v#.*$" contains=@Spell

" Numerals
syn case ignore
"integer number, or floating point number without a dot and with "f".
syn match       hlbNumbers       display transparent "\<\d\|\.\d" contains=hlbNumber
syn match       hlbNumbersCom    display contained transparent "\<\d\|\.\d" contains=hlbNumber
syn match       hlbNumber        display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"

" Literals
syn region      hlbString        start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn region      hlbChar          start=+L\='+ skip=+\\\\\|\\'+ end=+'+ contains=@Spell

hi def link hlbKeyword      Statement
hi def link hlbType         Type
hi def link hlbBoolean      Boolean
hi def link hlbComment      Comment
hi def link hlbNumbers      Number
hi def link hlbNumbersCom   Number
hi def link hlbNumber       Number
hi def link hlbString       String
hi def link hlbChar         String

let b:current_syntax = "hlb"
