" Structure: Material Theme by Mattia Astorino (https://github.com/equinusocio/material-theme)

" Color definitions
let s:black = "000000" " #000000
let s:dark1 = "233146" " #233146
let s:dark2 = "3A5272" " #3A5272
let s:dark3 = "5177A1" " #5177A1
let s:neutr = "799ABB" " #799ABB
let s:lite3 = "ABC1D5" " #ABC1D5
let s:lite2 = "D6E2EB" " #D6E2EB
let s:lite1 = "E7EEF3" " #E7EEF3
let s:white = "FFFFFF" " #FFFFFF
let s:gold0 = "A8990F" " #A8990F
let s:lime0 = "5C940D" " #5C940D
let s:mint0 = "12B886" " #12B886
let s:turqo = "1098AD" " #1098AD
let s:blue0 = "1998FF" " #1998FF
let s:indig = "845EF7" " #845EF7
let s:purpl = "CC5DE8" " #CC5DE8
let s:magen = "FF3369" " #FF3369
let s:fluor = "E3FF54" " #E3FF54
let s:diffa = "D1F0E7" " #D1F0E7
let s:difft = "CFD3FF" " #CFD3FF
let s:diffc = "E1E3F5" " #E1E3F5
let s:diffd = "F0E4E7" " #F0E4E7

" Theme setup
hi clear
syntax reset
let g:colors_name = "antaed_light"

" Highlighting function
fun <sid>hi(group, guifg, guibg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:attr == "undercurl"
    exec "hi " . a:group . " gui=undercurl guisp=#".s:lite3
  elseif a:attr != ""
    exec "hi " . a:group . " gui="    . a:attr
  endif
endfun

fun s:gui(color)
  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold"         , ""      , ""      , "NONE")
call <sid>hi("Italic"       , ""      , ""      , "NONE")
call <sid>hi("CursorLine"   , s:black , s:lite2 , "NONE")
call <sid>hi("Visual"       , ""      , s:lite2 , "NONE")
call <sid>hi("VisualNOS"    , ""      , s:lite2 , "NONE")
call <sid>hi("Cursor"       , s:fluor , s:black , "NONE")
call <sid>hi("VertSplit"    , s:white , s:white , "NONE")
call <sid>hi("MatchParen"   , s:white , s:neutr , "NONE")
call <sid>hi("IncSearch"    , s:fluor , s:black , "NONE")
call <sid>hi("LineNr"       , s:lite3 , s:lite1 , "NONE")
call <sid>hi("TabLine"      , s:white , s:dark1 , "NONE")
call <sid>hi("Folded"       , s:neutr , s:lite1 , "NONE")
call <sid>hi("NonText"      , s:dark3 , ""      , "NONE")
call <sid>hi("SpecialKey"   , s:dark3 , ""      , "NONE")
call <sid>hi("Ignore"       , s:dark3 , s:lite1 , "NONE")
call <sid>hi("FoldColumn"   , s:neutr , s:lite1 , "NONE")
call <sid>hi("CursorLineNr" , s:dark1 , s:lite1 , "NONE")
call <sid>hi("SignColumn"   , s:neutr , s:lite1 , "NONE")
call <sid>hi("Search"       , s:black , s:fluor , "NONE")
call <sid>hi("QuickFixLine" , s:black , s:lite2 , "NONE")
call <sid>hi("TabLineFill"  , s:white , s:dark1 , "NONE")
call <sid>hi("StatusLine"       , s:dark1 , s:white , "NONE")
call <sid>hi("StatusLineTerm"   , s:dark1 , s:white , "NONE")
call <sid>hi("StatusLineNC"     , s:neutr , s:white , "NONE")
call <sid>hi("StatusLineTermNC" , s:neutr , s:white , "NONE")
call <sid>hi("Underlined"   , s:black , ""      , "NONE")
call <sid>hi("Question"     , s:dark1 , ""      , "NONE")
call <sid>hi("TooLong"      , s:black , ""      , "NONE")
call <sid>hi("Error"        , s:black , s:lite1 , "NONE")
call <sid>hi("ErrorMsg"     , s:black , s:lite1 , "NONE")
call <sid>hi("WarningMsg"   , s:black , ""      , "NONE")
call <sid>hi("Debug"        , s:black , ""      , "NONE")
call <sid>hi("Macro"        , s:dark2 , ""      , "NONE")
call <sid>hi("TabLineSel"   , s:black , s:lite2 , "NONE")
call <sid>hi("Directory"    , s:dark3 , ""      , "NONE")
call <sid>hi("ModeMsg"      , s:lite1 , ""      , "NONE")
call <sid>hi("MoreMsg"      , s:black , ""      , "NONE")
call <sid>hi("Conceal"      , s:black , s:lite1 , "NONE")
call <sid>hi("WildMenu"     , s:black , s:white , "NONE")
call <sid>hi("PMenu"        , s:dark2 , s:lite2 , "NONE")
call <sid>hi("PMenuSbar"    , ""      , s:lite2 , "NONE")
call <sid>hi("PMenuThumb"   , ""      , s:lite3 , "NONE")
call <sid>hi("PMenuSel"     , s:white , s:lite3 , "NONE")
call <sid>hi("EndOfBuffer"  , s:lite1 , ""      , "NONE")

" Standard syntax highlighting
call <sid>hi("Comment"      , s:lite3 , ""      , "NONE")
call <sid>hi("Delimiter"    , s:neutr , ""      , "NONE")
call <sid>hi("Exception"    , s:neutr , ""      , "NONE")
call <sid>hi("Noise"        , s:neutr , ""      , "NONE")
call <sid>hi("StorageClass" , s:neutr , ""      , "NONE")
call <sid>hi("Keyword"      , s:dark3 , ""      , "NONE")
call <sid>hi("Function"     , s:dark3 , ""      , "NONE")
call <sid>hi("Include"      , s:dark3 , ""      , "NONE")
call <sid>hi("Type"         , s:dark3 , ""      , "NONE")
call <sid>hi("Repeat"       , s:dark3 , ""      , "NONE")
call <sid>hi("Statement"    , s:dark3 , ""      , "NONE")
call <sid>hi("Operator"     , s:dark3 , ""      , "NONE")
call <sid>hi("Conditional"  , s:dark3 , ""      , "NONE")
call <sid>hi("Label"        , s:dark3 , ""      , "NONE")
call <sid>hi("Structure"    , s:dark3 , ""      , "NONE")
call <sid>hi("Character"    , s:dark3 , ""      , "NONE")
call <sid>hi("Special"      , s:dark3 , ""      , "NONE")
call <sid>hi("SpecialChar"  , s:dark3 , ""      , "NONE")
call <sid>hi("Define"       , s:dark3 , ""      , "NONE")
call <sid>hi("Tag"          , s:dark3 , ""      , "NONE")
call <sid>hi("Typedef"      , s:dark3 , ""      , "NONE")
call <sid>hi("Todo"         , s:dark3 , s:lite1 , "NONE")
call <sid>hi("String"       , s:dark1 , ""      , "NONE")
call <sid>hi("Title"        , s:dark1 , ""      , "NONE")
call <sid>hi("Identifier"   , s:dark1 , ""      , "NONE")
call <sid>hi("Number"       , s:dark1 , ""      , "NONE")
call <sid>hi("PreProc"      , s:dark1 , ""      , "NONE")
call <sid>hi("Constant"     , s:dark1 , ""      , "NONE")
call <sid>hi("Boolean"      , s:dark1 , ""      , "NONE")
call <sid>hi("Float"        , s:dark1 , ""      , "NONE")
call <sid>hi("Normal"       , s:dark1 , s:lite1 , "NONE")
call <sid>hi("qfFilename"   , s:dark1 , ""      , "NONE")
call <sid>hi("qfSeparator"  , s:dark1 , ""      , "NONE")
call <sid>hi("qfLineNr"     , s:dark1 , ""      , "NONE")
call <sid>hi("helpHyperTextJump", s:turqo , ""      , "NONE")
call <sid>hi("helpExample"      , s:dark3 , ""      , "NONE")
call <sid>hi("helpCommand"      , s:dark3 , ""      , "NONE")

" HTML highlighting
call <sid>hi("htmlCommentPart"    , s:lite3 , "" , "NONE")
call <sid>hi("htmlTag"            , s:neutr , "" , "NONE")
call <sid>hi("htmlEndTag"         , s:neutr , "" , "NONE")
call <sid>hi("htmlArg"            , s:neutr , "" , "NONE")
call <sid>hi("htmlTagName"        , s:dark3 , "" , "NONE")
call <sid>hi("htmlSpecialTagName" , s:dark3 , "" , "NONE")
call <sid>hi("htmlEventDQ"        , s:dark2 , "" , "NONE")
call <sid>hi("htmlEventSQ"        , s:dark2 , "" , "NONE")
call <sid>hi("htmlBold"           , s:dark1 , "" , "NONE")
call <sid>hi("htmlItalic"         , s:dark1 , "" , "NONE")
call <sid>hi("htmlLink"           , s:dark1 , "" , "NONE")
call <sid>hi("htmlSpecialChar"    , s:dark1 , "" , "NONE")
call <sid>hi("htmlEvent"          , s:neutr , "" , "NONE")
call <sid>hi("htmlString"         , s:turqo , "" , "NONE")

" CSS highlighting
call <sid>hi("cssVendor"            , s:neutr , "" , "NONE")
call <sid>hi("cssAttrComma"         , s:neutr , "" , "NONE")
call <sid>hi("cssFunctionComma"     , s:neutr , "" , "NONE")
call <sid>hi("cssAttributeSelector" , s:dark3 , "" , "NONE")
call <sid>hi("cssDefinition"        , s:dark3 , "" , "NONE")
call <sid>hi("cssProp"              , s:dark3 , "" , "NONE")
call <sid>hi("cssKeyFrameProp"      , s:dark3 , "" , "NONE")
call <sid>hi("cssAtKeyword"         , s:dark3 , "" , "NONE")
call <sid>hi("cssBraces"            , s:dark2 , "" , "NONE")
call <sid>hi("cssAttrRegion"        , s:dark2 , "" , "NONE")
call <sid>hi("cssUnitDecorators"    , s:dark2 , "" , "NONE")
call <sid>hi("cssFunction"          , s:dark2 , "" , "NONE")
call <sid>hi("cssColor"             , s:dark2 , "" , "NONE")
call <sid>hi("cssIncludeKeyword"    , s:dark2 , "" , "NONE")
call <sid>hi("cssMediaType"         , s:dark2 , "" , "NONE")
call <sid>hi("cssFontDescriptor"    , s:dark2 , "" , "NONE")
call <sid>hi("cssPseudoClassId"     , s:dark2 , "" , "NONE")
call <sid>hi("cssSelectorOp"        , s:dark2 , "" , "NONE")
call <sid>hi("cssSelectorOp2"       , s:dark2 , "" , "NONE")
call <sid>hi("cssFunctionName"      , s:dark2 , "" , "NONE")
call <sid>hi("cssInclude"           , s:dark2 , "" , "NONE")
call <sid>hi("cssImportant"         , s:dark2 , "" , "NONE")
call <sid>hi("cssValueNumber"       , s:dark1 , "" , "NONE")
call <sid>hi("cssAttr"              , s:dark1 , "" , "NONE")
call <sid>hi("cssValueLength"       , s:dark1 , "" , "NONE")
call <sid>hi("cssValueAngle"        , s:dark1 , "" , "NONE")
call <sid>hi("cssValueTime"         , s:dark1 , "" , "NONE")
call <sid>hi("cssCommonAttr"        , s:dark1 , "" , "NONE")
call <sid>hi("cssTransitionAttr"    , s:dark1 , "" , "NONE")
call <sid>hi("cssAnimationAttr"     , s:dark1 , "" , "NONE")
call <sid>hi("cssKeyFrame"          , s:dark1 , "" , "NONE")
call <sid>hi("cssUnicodeEscape"     , s:dark1 , "" , "NONE")
call <sid>hi("cssIdentifier"        , s:turqo , "" , "NONE")
call <sid>hi("cssTagName"           , s:turqo , "" , "NONE")
call <sid>hi("cssClassName"         , s:turqo , "" , "NONE")
call <sid>hi("cssClassNameDot"      , s:turqo , "" , "NONE")
call <sid>hi("cssKeyFrameSelector"  , s:turqo , "" , "NONE")

" PHP highlighting
call <sid>hi("phpRegion"          , s:neutr , "" , "NONE")
call <sid>hi("phpParent"          , s:dark2 , "" , "NONE")
call <sid>hi("phpOperator"        , s:dark2 , "" , "NONE")
call <sid>hi("phpIdentifier"      , s:indig , "" , "NONE")
call <sid>hi("phpVarSelector"     , s:indig , "" , "NONE")
call <sid>hi("phpIntVar"          , s:indig , "" , "NONE")
call <sid>hi("phpMethods"         , s:indig , "" , "NONE")
call <sid>hi("phpMethodsVar"      , s:indig , "" , "NONE")
call <sid>hi("phpDef"             , s:indig , "" , "NONE")
call <sid>hi("phpCap"             , s:purpl , "" , "NONE")
call <sid>hi("phpMethod"          , s:purpl , "" , "NONE")
call <sid>hi("phpFunc"            , s:purpl , "" , "NONE")
call <sid>hi("phpClass"           , s:purpl , "" , "NONE")
call <sid>hi("phpClasses"         , s:purpl , "" , "NONE")
call <sid>hi("phpClassExtends"    , s:purpl , "" , "NONE")
call <sid>hi("phpFunction"        , s:purpl , "" , "NONE")
call <sid>hi("phpKeyword"         , s:blue0 , "" , "NONE")
call <sid>hi("phpFunctions"       , s:blue0 , "" , "NONE")
call <sid>hi("phpType"            , s:blue0 , "" , "NONE")
call <sid>hi("phpGlobals"         , s:blue0 , "" , "NONE")
call <sid>hi("phpInclude"         , s:blue0 , "" , "NONE")
call <sid>hi("phpRepeat"          , s:blue0 , "" , "NONE")
call <sid>hi("phpStatement"       , s:blue0 , "" , "NONE")
call <sid>hi("phpSpecialFunction" , s:blue0 , "" , "NONE")
call <sid>hi("phpStorageClass"    , s:blue0 , "" , "NONE")
call <sid>hi("phpDefine"          , s:blue0 , "" , "NONE")
call <sid>hi("phpConditional"     , s:blue0 , "" , "NONE")
call <sid>hi("phpLabel"           , s:blue0 , "" , "NONE")
call <sid>hi("phpStructure"       , s:blue0 , "" , "NONE")

" JavaScript better highlighting
call <sid>hi("jsFuncArgCommas"     , s:neutr , "" , "NONE")
call <sid>hi("jsObjectProp"        , s:dark3 , "" , "NONE")
call <sid>hi("jsStorageClass"      , s:dark3 , "" , "NONE")
call <sid>hi("jsParens"            , s:dark2 , "" , "NONE")
call <sid>hi("jsFuncBraces"        , s:dark2 , "" , "NONE")
call <sid>hi("jsIfElseBraces"      , s:dark2 , "" , "NONE")
call <sid>hi("jsRepeatBraces"      , s:dark2 , "" , "NONE")
call <sid>hi("jsObjectBraces"      , s:dark2 , "" , "NONE")
call <sid>hi("jsSwitchBraces"      , s:dark2 , "" , "NONE")
call <sid>hi("jsTryCatchBraces"    , s:dark2 , "" , "NONE")
call <sid>hi("jsBrackets"          , s:dark2 , "" , "NONE")
call <sid>hi("jsThis"              , s:dark2 , "" , "NONE")
call <sid>hi("jsFunction"          , s:mint0 , "" , "NONE")
call <sid>hi("jsFuncParens"        , s:dark2 , "" , "NONE")
call <sid>hi("jsGlobalObjects"     , s:dark2 , "" , "NONE")
call <sid>hi("javaScript"          , s:mint0 , "" , "NONE")
call <sid>hi("jsFuncCall"          , s:mint0 , "" , "NONE")
call <sid>hi("jsNumber"            , s:dark1 , "" , "NONE")
call <sid>hi("jsBooleanTrue"       , s:dark1 , "" , "NONE")
call <sid>hi("jsBooleanFalse"      , s:dark1 , "" , "NONE")
call <sid>hi("jsBuiltins"          , s:mint0 , "" , "NONE")
call <sid>hi("jsUndefined"         , s:dark1 , "" , "NONE")
call <sid>hi("jsFloat"             , s:mint0 , "" , "NONE")
call <sid>hi("jsNull"              , s:dark1 , "" , "NONE")
call <sid>hi("jsException"         , s:mint0 , "" , "NONE")
call <sid>hi("jsParenIfElse"       , s:lime0 , "" , "NONE")
call <sid>hi("jsIfElseBlock"       , s:lime0 , "" , "NONE")
call <sid>hi("jsTernaryIf"         , s:lime0 , "" , "NONE")
call <sid>hi("jsSwitchBlock"       , s:lime0 , "" , "NONE")
call <sid>hi("jsRepeatBlock"       , s:lime0 , "" , "NONE")
call <sid>hi("jsFuncBlock"         , s:lime0 , "" , "NONE")
call <sid>hi("jsObjectKey"         , s:lime0 , "" , "NONE")
call <sid>hi("jsParen"             , s:lime0 , "" , "NONE")
call <sid>hi("jsParenRepeat"       , s:lime0 , "" , "NONE")
call <sid>hi("jsGlobalNodeObjects" , s:lime0 , "" , "NONE")
call <sid>hi("jsObjectValue"       , s:lime0 , "" , "NONE")
call <sid>hi("jsVariableDef"       , s:lime0 , "" , "NONE")
call <sid>hi("jsFuncName"          , s:lime0 , "" , "NONE")
call <sid>hi("jsFunctionKey"       , s:lime0 , "" , "NONE")
call <sid>hi("jsFuncArgs"          , s:lime0 , "" , "NONE")
call <sid>hi("jsBracket"           , s:lime0 , "" , "NONE")
call <sid>hi("jsPrototype"         , s:lime0 , "" , "NONE")
call <sid>hi("jsExceptions"        , s:lime0 , "" , "NONE")
call <sid>hi("jsArguments"         , s:lime0 , "" , "NONE")
call <sid>hi("jsAsyncKeyword"      , s:lime0 , "" , "NONE")
call <sid>hi("jsParenSwitch"       , s:lime0 , "" , "NONE")

" Custom JS
call <sid>hi("jsdt"                , s:lime0 , "" , "NONE")
call <sid>hi("jsprop"              , s:lime0 , "" , "NONE")
call <sid>hi("jsword"              , s:lime0 , "" , "NONE")
call <sid>hi("jspct"               , s:neutr , "" , "NONE")
call <sid>hi("jsop"                , s:dark2 , "" , "NONE")
call <sid>hi("jsjq"                , s:mint0 , "" , "NONE")
call <sid>hi("jsKwd"               , s:mint0 , "" , "NONE")
call <sid>hi("jsObjKwd"            , s:mint0 , "" , "NONE")
call <sid>hi("jsMtd"               , s:gold0 , "" , "NONE")
call <sid>hi("jsMtdKwd"            , s:mint0 , "" , "NONE")
call <sid>hi("jsMtdMch"            , s:mint0 , "" , "NONE")
call <sid>hi("jsPrpKwd"            , s:mint0 , "" , "NONE")
call <sid>hi("jsFxMtd"             , s:mint0 , "" , "NONE")
call <sid>hi("jsFxPrp"             , s:mint0 , "" , "NONE")

" Default JavaScript
call <sid>hi("javaScriptIdentifier"  , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptOperator"    , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptBranch"      , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptConditional" , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptLabel"       , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptFunction"    , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptMember"      , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptStatement"   , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptRepeat"      , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptGlobal"      , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptNull"        , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptMessage"     , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptType"        , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptReserved"    , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptException"   , s:mint0 , "" , "NONE")
call <sid>hi("javaScriptBraces"      , s:dark2 , "" , "NONE")
call <sid>hi("javaScriptParens"      , s:dark2 , "" , "NONE")

" VimScript
call <sid>hi("vimNotation"  , s:dark2 , "" , "NONE")
call <sid>hi("vimMapModKey" , s:dark2 , "" , "NONE")

" Diff highlighting
call <sid>hi("DiffChange"  , ""      , s:diffc , "NONE")
call <sid>hi("DiffText"    , s:black , s:difft , "NONE")
call <sid>hi("DiffAdd"     , ""      , s:diffa , "NONE")
call <sid>hi("DiffDelete"  , s:diffd , s:diffd , "NONE")

" Git highlighting
call <sid>hi("gitCommitOverflow" , s:purpl , "" , "NONE")
call <sid>hi("gitCommitSummary"  , s:dark3 , "" , "NONE")

" GitGutter highlighting
call <sid>hi("GitGutterAdd"          , s:turqo , s:lite2 , "NONE")
call <sid>hi("GitGutterChange"       , s:lime0 , s:lite2 , "NONE")
call <sid>hi("GitGutterDelete"       , s:purpl , s:lite2 , "NONE")
call <sid>hi("GitGutterChangeDelete" , s:dark2 , s:lite2 , "NONE")

" Markdown highlighting
call <sid>hi("markdownCode"             , s:turqo , ""      , "NONE")
call <sid>hi("markdownError"            , s:purpl , s:lite1 , "NONE")
call <sid>hi("markdownCodeBlock"        , s:turqo , ""      , "NONE")
call <sid>hi("markdownHeadingDelimiter" , s:dark2 , ""      , "NONE")

" SASS highlighting
call <sid>hi("sassidChar"                 , s:purpl , "" , "NONE")
call <sid>hi("sassClassChar"              , s:purpl , "" , "NONE")
call <sid>hi("sassInclude"                , s:dark2 , "" , "NONE")
call <sid>hi("sassMixing"                 , s:dark2 , "" , "NONE")
call <sid>hi("sassMixinName"              , s:dark3 , "" , "NONE")
call <sid>hi("sassVariable"               , s:purpl , "" , "NONE")
call <sid>hi("sassClass"                  , s:purpl , "" , "NONE")
call <sid>hi("sassProperty"               , s:dark3 , "" , "NONE")
call <sid>hi("sassDefinition"             , s:dark3 , "" , "NONE")
call <sid>hi("sassCssAttribute"           , s:dark2 , "" , "NONE")
call <sid>hi("sassInterpolationDelimiter" , s:dark2 , "" , "NONE")
call <sid>hi("sassVariableAssignment"     , s:dark3 , "" , "NONE")

" Spelling highlighting
call <sid>hi("SpellBad"   , "" , s:lite1 , "undercurl")
call <sid>hi("SpellLocal" , "" , s:lite1 , "undercurl")
call <sid>hi("SpellCap"   , "" , s:lite1 , "undercurl")
call <sid>hi("SpellRare"  , "" , s:lite1 , "undercurl")

" CtrlP
" For the CtrlP buffer:
call <sid>hi("CtrlPBufferNr"    , s:dark1 , ""      , "NONE")
call <sid>hi("CtrlPLinePre"     , s:lite1 , s:lite1 , "NONE") " the line prefix '>' in the match window
call <sid>hi("CtrlPMatch"       , s:black , s:fluor      , "NONE")
" Highlight groups:
call <sid>hi("CtrlPMode2"   , s:neutr , s:white , "NONE") " 'prt' or 'win' , 'regex' , the working directory (|hl-LineNr|)
call <sid>hi("CtrlPMode1"   , s:dark3 , s:white , "NONE") " 'file' or 'path' or 'line' , and the current mode (Character)

" COC
call <sid>hi("CocErrorSign"          , s:magen , "" , "NONE")
call <sid>hi("CocWarningSign"        , s:gold0 , "" , "NONE")
call <sid>hi("CocInfoSign"           , s:indig , "" , "NONE")
call <sid>hi("CocHintSign"           , s:turqo , "" , "NONE")
call <sid>hi("CocErrorVirtualText"   , s:lite3 , "" , "NONE")
call <sid>hi("CocWarningVirtualText" , s:lite3 , "" , "NONE")
call <sid>hi("CocInfoVirtualText"    , s:lite3 , "" , "NONE")
call <sid>hi("CocHintVirtualText"    , s:lite3 , "" , "NONE")
call <sid>hi("CocErrorFloat"         , s:dark2 , "" , "NONE")
call <sid>hi("CocWarningFloat"       , s:dark2 , "" , "NONE")
call <sid>hi("CocInfoFloat"          , s:dark2 , "" , "NONE")
call <sid>hi("CocHintFloat"          , s:dark2 , "" , "NONE")
call <sid>hi("CocErrorHighlight"     , ""      , "" , "undercurl")
call <sid>hi("CocWarningHighlight"   , ""      , "" , "undercurl")
call <sid>hi("CocInfoHighlight"      , ""      , "" , "undercurl")
call <sid>hi("CocHintHighlight"      , ""      , "" , "undercurl")

" Remove functions
delf <sid>hi
delf <sid>gui

" Remove color variables
unlet s:black s:dark1 s:dark2 s:dark3 s:neutr s:lite3 s:lite2 s:lite1 s:white s:gold0 s:lime0 s:mint0 s:turqo s:blue0 s:indig s:purpl s:magen s:fluor s:diffa s:difft s:diffc s:diffd
