" Structure: Material Theme by Mattia Astorino (https://github.com/equinusocio/material-theme)

" Color definitions
let s:black = "000000" " #000000
let s:dark1 = "27313F" " #27313F
let s:dark2 = "43556B" " #43556B
let s:dark3 = "5D7792" " #5D7792
let s:neutr = "859AB0" " #859AB0
let s:lite3 = "B3BFCB" " #B3BFCB
let s:lite2 = "DBE0E6" " #DBE1E6
let s:lite1 = "EAEDF0" " #EAEDF0
let s:white = "FFFFFF" " #FFFFFF
let s:mint0 = "00C46F" " #00C46F
let s:turqo = "00ABB8" " #00ABB8
let s:blue0 = "4B99FF" " #4B99FF
let s:indig = "7381FF" " #7381FF
let s:purpl = "9879FF" " #9879FF
let s:magen = "CB7ECC" " #CB7ECC
let s:coral = "F288A4" " #F288A4
let s:fluor = "DAFF61" " #DAFF61
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
  if a:attr != ""
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
call <sid>hi("IncSearch"    , s:black , s:fluor , "NONE")
call <sid>hi("LineNr"       , s:lite3 , s:lite1 , "NONE")
call <sid>hi("TabLine"      , s:white , s:dark1 , "NONE")
call <sid>hi("Folded"       , s:neutr , s:lite1 , "NONE")
call <sid>hi("NonText"      , s:dark3 , ""      , "NONE")
call <sid>hi("SpecialKey"   , s:dark3 , ""      , "NONE")
call <sid>hi("Ignore"       , s:dark3 , s:lite1 , "NONE")
call <sid>hi("FoldColumn"   , s:neutr , s:lite1 , "NONE")
call <sid>hi("CursorLineNr" , s:dark1 , s:lite1 , "NONE")
call <sid>hi("SignColumn"   , s:black , s:lite1 , "NONE")
call <sid>hi("Search"       , s:black , s:fluor , "NONE")
call <sid>hi("QuickFixLine" , s:black , s:lite2 , "NONE")
call <sid>hi("TabLineFill"  , s:white , s:dark1 , "NONE")
call <sid>hi("StatusLine"   , s:neutr , s:white , "NONE")
call <sid>hi("StatusLineTerm"   , s:neutr , s:white , "NONE")
call <sid>hi("StatusLineNC" , s:lite3 , s:white , "NONE")
call <sid>hi("StatusLineTermNC" , s:lite3 , s:white , "NONE")
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
call <sid>hi("helpHyperTextJump", s:indig , ""      , "NONE")
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
call <sid>hi("htmlString"         , s:indig , "" , "NONE")

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
call <sid>hi("cssIdentifier"        , s:indig , "" , "NONE")
call <sid>hi("cssTagName"           , s:indig , "" , "NONE")
call <sid>hi("cssClassName"         , s:indig , "" , "NONE")
call <sid>hi("cssClassNameDot"      , s:indig , "" , "NONE")
call <sid>hi("cssKeyFrameSelector"  , s:indig , "" , "NONE")

" PHP highlighting
call <sid>hi("phpRegion"          , s:neutr , "" , "NONE")
call <sid>hi("phpParent"          , s:dark2 , "" , "NONE")
call <sid>hi("phpOperator"        , s:dark2 , "" , "NONE")
call <sid>hi("phpIdentifier"      , s:magen , "" , "NONE")
call <sid>hi("phpVarSelector"     , s:magen , "" , "NONE")
call <sid>hi("phpIntVar"          , s:magen , "" , "NONE")
call <sid>hi("phpMethods"         , s:magen , "" , "NONE")
call <sid>hi("phpMethodsVar"      , s:magen , "" , "NONE")
call <sid>hi("phpDef"             , s:magen , "" , "NONE")
call <sid>hi("phpCap"             , s:coral , "" , "NONE")
call <sid>hi("phpMethod"          , s:coral , "" , "NONE")
call <sid>hi("phpFunc"            , s:coral , "" , "NONE")
call <sid>hi("phpClass"           , s:coral , "" , "NONE")
call <sid>hi("phpClasses"         , s:coral , "" , "NONE")
call <sid>hi("phpClassExtends"    , s:coral , "" , "NONE")
call <sid>hi("phpFunction"        , s:coral , "" , "NONE")
call <sid>hi("phpKeyword"         , s:purpl , "" , "NONE")
call <sid>hi("phpFunctions"       , s:purpl , "" , "NONE")
call <sid>hi("phpType"            , s:purpl , "" , "NONE")
call <sid>hi("phpGlobals"         , s:purpl , "" , "NONE")
call <sid>hi("phpInclude"         , s:purpl , "" , "NONE")
call <sid>hi("phpRepeat"          , s:purpl , "" , "NONE")
call <sid>hi("phpStatement"       , s:purpl , "" , "NONE")
call <sid>hi("phpSpecialFunction" , s:purpl , "" , "NONE")
call <sid>hi("phpStorageClass"    , s:purpl , "" , "NONE")
call <sid>hi("phpDefine"          , s:purpl , "" , "NONE")
call <sid>hi("phpConditional"     , s:purpl , "" , "NONE")
call <sid>hi("phpLabel"           , s:purpl , "" , "NONE")
call <sid>hi("phpStructure"       , s:purpl , "" , "NONE")

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
call <sid>hi("jsFunction"          , s:blue0 , "" , "NONE")
call <sid>hi("jsFuncParens"        , s:dark2 , "" , "NONE")
call <sid>hi("jsGlobalObjects"     , s:dark2 , "" , "NONE")
call <sid>hi("javaScript"          , s:blue0 , "" , "NONE")
call <sid>hi("jsFuncCall"          , s:blue0 , "" , "NONE")
call <sid>hi("jsNumber"            , s:dark1 , "" , "NONE")
call <sid>hi("jsBooleanTrue"       , s:dark1 , "" , "NONE")
call <sid>hi("jsBooleanFalse"      , s:dark1 , "" , "NONE")
call <sid>hi("jsBuiltins"          , s:blue0 , "" , "NONE")
call <sid>hi("jsUndefined"         , s:dark1 , "" , "NONE")
call <sid>hi("jsFloat"             , s:blue0 , "" , "NONE")
call <sid>hi("jsNull"              , s:dark1 , "" , "NONE")
call <sid>hi("jsException"         , s:blue0 , "" , "NONE")
call <sid>hi("jsParenIfElse"       , s:turqo , "" , "NONE")
call <sid>hi("jsIfElseBlock"       , s:turqo , "" , "NONE")
call <sid>hi("jsTernaryIf"         , s:turqo , "" , "NONE")
call <sid>hi("jsSwitchBlock"       , s:turqo , "" , "NONE")
call <sid>hi("jsRepeatBlock"       , s:turqo , "" , "NONE")
call <sid>hi("jsFuncBlock"         , s:turqo , "" , "NONE")
call <sid>hi("jsObjectKey"         , s:turqo , "" , "NONE")
call <sid>hi("jsParen"             , s:turqo , "" , "NONE")
call <sid>hi("jsParenRepeat"       , s:turqo , "" , "NONE")
call <sid>hi("jsGlobalNodeObjects" , s:turqo , "" , "NONE")
call <sid>hi("jsObjectValue"       , s:turqo , "" , "NONE")
call <sid>hi("jsVariableDef"       , s:turqo , "" , "NONE")
call <sid>hi("jsFuncName"          , s:turqo , "" , "NONE")
call <sid>hi("jsFunctionKey"       , s:turqo , "" , "NONE")
call <sid>hi("jsFuncArgs"          , s:turqo , "" , "NONE")
call <sid>hi("jsBracket"           , s:turqo , "" , "NONE")
call <sid>hi("jsPrototype"         , s:turqo , "" , "NONE")
call <sid>hi("jsExceptions"        , s:turqo , "" , "NONE")
call <sid>hi("jsArguments"         , s:turqo , "" , "NONE")
call <sid>hi("jsAsyncKeyword"      , s:turqo , "" , "NONE")
call <sid>hi("jsParenSwitch"       , s:turqo , "" , "NONE")

" Custom JS
call <sid>hi("jsdt"                , s:turqo , "" , "NONE")
call <sid>hi("jsprop"              , s:turqo , "" , "NONE")
call <sid>hi("jsword"              , s:turqo , "" , "NONE")
call <sid>hi("jspct"               , s:neutr , "" , "NONE")
call <sid>hi("jsop"                , s:dark2 , "" , "NONE")
call <sid>hi("jsjq"                , s:blue0 , "" , "NONE")
call <sid>hi("jsKwd"               , s:blue0 , "" , "NONE")
call <sid>hi("jsObjKwd"            , s:blue0 , "" , "NONE")
call <sid>hi("jsMtd"               , s:mint0 , "" , "NONE")
call <sid>hi("jsMtdKwd"            , s:blue0 , "" , "NONE")
call <sid>hi("jsMtdMch"            , s:blue0 , "" , "NONE")
call <sid>hi("jsPrpKwd"            , s:blue0 , "" , "NONE")
call <sid>hi("jsFxMtd"             , s:blue0 , "" , "NONE")
call <sid>hi("jsFxPrp"             , s:blue0 , "" , "NONE")

" Default JavaScript
call <sid>hi("javaScriptIdentifier"  , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptOperator"    , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptBranch"      , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptConditional" , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptLabel"       , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptFunction"    , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptMember"      , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptStatement"   , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptRepeat"      , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptGlobal"      , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptNull"        , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptMessage"     , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptType"        , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptReserved"    , s:blue0 , "" , "NONE")
call <sid>hi("javaScriptException"   , s:blue0 , "" , "NONE")
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
call <sid>hi("gitCommitOverflow" , s:coral , "" , "NONE")
call <sid>hi("gitCommitSummary"  , s:dark3 , "" , "NONE")

" GitGutter highlighting
call <sid>hi("GitGutterAdd"          , s:indig , s:lite2 , "NONE")
call <sid>hi("GitGutterChange"       , s:turqo , s:lite2 , "NONE")
call <sid>hi("GitGutterDelete"       , s:coral , s:lite2 , "NONE")
call <sid>hi("GitGutterChangeDelete" , s:dark2 , s:lite2 , "NONE")

" Markdown highlighting
call <sid>hi("markdownCode"             , s:indig , ""      , "NONE")
call <sid>hi("markdownError"            , s:coral , s:lite1 , "NONE")
call <sid>hi("markdownCodeBlock"        , s:indig , ""      , "NONE")
call <sid>hi("markdownHeadingDelimiter" , s:dark2 , ""      , "NONE")

" SASS highlighting
call <sid>hi("sassidChar"                 , s:coral , "" , "NONE")
call <sid>hi("sassClassChar"              , s:coral , "" , "NONE")
call <sid>hi("sassInclude"                , s:dark2 , "" , "NONE")
call <sid>hi("sassMixing"                 , s:dark2 , "" , "NONE")
call <sid>hi("sassMixinName"              , s:dark3 , "" , "NONE")
call <sid>hi("sassVariable"               , s:coral , "" , "NONE")
call <sid>hi("sassClass"                  , s:coral , "" , "NONE")
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

" Remove functions
delf <sid>hi
delf <sid>gui

" Remove color variables
unlet s:black s:dark1 s:dark2 s:dark3 s:neutr s:lite3 s:lite2 s:lite1 s:white s:mint0 s:turqo s:blue0 s:indig s:purpl s:magen s:coral s:fluor s:diffa s:difft s:diffc s:diffd
