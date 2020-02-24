" Structure: Material Theme by Mattia Astorino (https://github.com/equinusocio/material-theme)

" Color definitions
let s:black = "000000" " #000000
let s:dark1 = "0E101B" " #0E101B
let s:dark2 = "161B2C" " #161B2C
let s:dark3 = "2E3A5C" " #2E3A5C
let s:neutr = "495F92" " #495F92
let s:lite3 = "6982B4" " #6982B4
let s:lite2 = "96A9CA" " #96A9CA
let s:lite1 = "BFCBDF" " #BFCBDF
let s:white = "FFFFFF" " #FFFFFF
let s:fluor = "A3C924" " #A3C924
let s:lime0 = "73D072" " #73D072
let s:mint0 = "2EE1B2" " #2EE1B2
let s:turqo = "00BAC7" " #00BAC7
let s:blue0 = "1DA5FF" " #1DA5FF
let s:indig = "6C76D5" " #6C76D5
let s:purpl = "9E6CEA" " #9E6CEA
let s:magen = "DC184D" " #DC184D
let s:pink0 = "FF3369" " #FF3369
let s:diffa = "112711" " #D1F0E7
let s:difft = "0F3357" " #0F3357
let s:diffc = "112132" " #112132
let s:diffd = "291629" " #F0E4E7

" Theme setup
hi clear
syntax reset
let g:colors_name = "antaed"

" Highlighting function
fun <sid>hi(group, guifg, guibg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:attr == "undercurl"
    exec "hi " . a:group . " gui=undercurl guisp=#".s:dark3
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
call <sid>hi("CursorLine"   , s:white , s:dark2 , "NONE")
call <sid>hi("Visual"       , ""      , s:dark2 , "NONE")
call <sid>hi("VisualNOS"    , ""      , s:dark2 , "NONE")
call <sid>hi("Cursor"       , s:white , s:magen , "NONE")
call <sid>hi("VertSplit"    , s:black , s:black , "NONE")
call <sid>hi("MatchParen"   , s:dark1 , s:lite1 , "NONE")
call <sid>hi("IncSearch"    , s:white , s:magen , "NONE")
call <sid>hi("LineNr"       , s:dark3 , s:dark1 , "NONE")
call <sid>hi("TabLine"      , s:black , s:lite1 , "NONE")
call <sid>hi("Folded"       , s:neutr , s:dark1 , "NONE")
call <sid>hi("NonText"      , s:lite3 , ""      , "NONE")
call <sid>hi("SpecialKey"   , s:lite3 , ""      , "NONE")
call <sid>hi("Ignore"       , s:lite3 , s:dark1 , "NONE")
call <sid>hi("FoldColumn"   , s:neutr , s:dark1 , "NONE")
call <sid>hi("CursorLineNr" , s:lite1 , s:dark1 , "NONE")
call <sid>hi("SignColumn"   , s:neutr , s:dark1 , "NONE")
call <sid>hi("Search"       , s:pink0 , s:dark1 , "NONE")
call <sid>hi("QuickFixLine" , s:white , s:dark2 , "NONE")
call <sid>hi("TabLineFill"  , s:black , s:lite1 , "NONE")
call <sid>hi("StatusLine"       , s:lite1 , s:black , "NONE")
call <sid>hi("StatusLineTerm"   , s:lite1 , s:black , "NONE")
call <sid>hi("StatusLineNC"     , s:neutr , s:black , "NONE")
call <sid>hi("StatusLineTermNC" , s:neutr , s:black , "NONE")
call <sid>hi("Underlined"   , s:white , ""      , "NONE")
call <sid>hi("Question"     , s:lite1 , ""      , "NONE")
call <sid>hi("TooLong"      , s:white , ""      , "NONE")
call <sid>hi("Error"        , s:white , s:dark1 , "NONE")
call <sid>hi("ErrorMsg"     , s:white , s:dark1 , "NONE")
call <sid>hi("WarningMsg"   , s:white , ""      , "NONE")
call <sid>hi("Debug"        , s:white , ""      , "NONE")
call <sid>hi("Macro"        , s:lite2 , ""      , "NONE")
call <sid>hi("TabLineSel"   , s:white , s:dark2 , "NONE")
call <sid>hi("Directory"    , s:lite3 , ""      , "NONE")
call <sid>hi("ModeMsg"      , s:dark1 , ""      , "NONE")
call <sid>hi("MoreMsg"      , s:white , ""      , "NONE")
call <sid>hi("Conceal"      , s:white , s:dark1 , "NONE")
call <sid>hi("WildMenu"     , s:white , s:black , "NONE")
call <sid>hi("PMenu"        , s:lite2 , s:dark2 , "NONE")
call <sid>hi("PMenuSbar"    , ""      , s:dark2 , "NONE")
call <sid>hi("PMenuThumb"   , ""      , s:dark3 , "NONE")
call <sid>hi("PMenuSel"     , s:white , s:dark2 , "NONE")
call <sid>hi("EndOfBuffer"  , s:dark1 , ""      , "NONE")

" Standard syntax highlighting
call <sid>hi("Comment"      , s:dark3 , ""      , "NONE")
call <sid>hi("Delimiter"    , s:neutr , ""      , "NONE")
call <sid>hi("Exception"    , s:neutr , ""      , "NONE")
call <sid>hi("Noise"        , s:neutr , ""      , "NONE")
call <sid>hi("StorageClass" , s:neutr , ""      , "NONE")
call <sid>hi("Keyword"      , s:lite3 , ""      , "NONE")
call <sid>hi("Function"     , s:lite3 , ""      , "NONE")
call <sid>hi("Include"      , s:lite3 , ""      , "NONE")
call <sid>hi("Type"         , s:lite3 , ""      , "NONE")
call <sid>hi("Repeat"       , s:lite3 , ""      , "NONE")
call <sid>hi("Statement"    , s:lite3 , ""      , "NONE")
call <sid>hi("Operator"     , s:lite3 , ""      , "NONE")
call <sid>hi("Conditional"  , s:lite3 , ""      , "NONE")
call <sid>hi("Label"        , s:lite3 , ""      , "NONE")
call <sid>hi("Structure"    , s:lite3 , ""      , "NONE")
call <sid>hi("Character"    , s:lite3 , ""      , "NONE")
call <sid>hi("Special"      , s:lite3 , ""      , "NONE")
call <sid>hi("SpecialChar"  , s:lite3 , ""      , "NONE")
call <sid>hi("Define"       , s:lite3 , ""      , "NONE")
call <sid>hi("Tag"          , s:lite3 , ""      , "NONE")
call <sid>hi("Typedef"      , s:lite3 , ""      , "NONE")
call <sid>hi("Todo"         , s:lite3 , s:dark1 , "NONE")
call <sid>hi("String"       , s:lite1 , ""      , "NONE")
call <sid>hi("Title"        , s:lite1 , ""      , "NONE")
call <sid>hi("Identifier"   , s:lite1 , ""      , "NONE")
call <sid>hi("Number"       , s:lite1 , ""      , "NONE")
call <sid>hi("PreProc"      , s:lite1 , ""      , "NONE")
call <sid>hi("Constant"     , s:lite1 , ""      , "NONE")
call <sid>hi("Boolean"      , s:lite1 , ""      , "NONE")
call <sid>hi("Float"        , s:lite1 , ""      , "NONE")
call <sid>hi("Normal"       , s:lite1 , s:dark1 , "NONE")
call <sid>hi("qfFilename"   , s:lite1 , ""      , "NONE")
call <sid>hi("qfSeparator"  , s:lite1 , ""      , "NONE")
call <sid>hi("qfLineNr"     , s:lite1 , ""      , "NONE")
call <sid>hi("helpHyperTextJump", s:turqo , ""      , "NONE")
call <sid>hi("helpExample"      , s:lite3 , ""      , "NONE")
call <sid>hi("helpCommand"      , s:lite3 , ""      , "NONE")

" HTML highlighting
call <sid>hi("htmlCommentPart"    , s:dark3 , "" , "NONE")
call <sid>hi("htmlTag"            , s:neutr , "" , "NONE")
call <sid>hi("htmlEndTag"         , s:neutr , "" , "NONE")
call <sid>hi("htmlArg"            , s:neutr , "" , "NONE")
call <sid>hi("htmlTagName"        , s:lite3 , "" , "NONE")
call <sid>hi("htmlSpecialTagName" , s:lite3 , "" , "NONE")
call <sid>hi("htmlEventDQ"        , s:lite2 , "" , "NONE")
call <sid>hi("htmlEventSQ"        , s:lite2 , "" , "NONE")
call <sid>hi("htmlBold"           , s:lite1 , "" , "NONE")
call <sid>hi("htmlItalic"         , s:lite1 , "" , "NONE")
call <sid>hi("htmlLink"           , s:lite1 , "" , "NONE")
call <sid>hi("htmlSpecialChar"    , s:lite1 , "" , "NONE")
call <sid>hi("htmlEvent"          , s:neutr , "" , "NONE")
call <sid>hi("htmlString"         , s:turqo , "" , "NONE")

" CSS highlighting
call <sid>hi("cssVendor"            , s:neutr , "" , "NONE")
call <sid>hi("cssAttrComma"         , s:neutr , "" , "NONE")
call <sid>hi("cssFunctionComma"     , s:neutr , "" , "NONE")
call <sid>hi("cssAttributeSelector" , s:lite3 , "" , "NONE")
call <sid>hi("cssDefinition"        , s:lite3 , "" , "NONE")
call <sid>hi("cssProp"              , s:lite3 , "" , "NONE")
call <sid>hi("cssKeyFrameProp"      , s:lite3 , "" , "NONE")
call <sid>hi("cssAtKeyword"         , s:lite3 , "" , "NONE")
call <sid>hi("cssBraces"            , s:lite2 , "" , "NONE")
call <sid>hi("cssAttrRegion"        , s:lite2 , "" , "NONE")
call <sid>hi("cssUnitDecorators"    , s:lite2 , "" , "NONE")
call <sid>hi("cssFunction"          , s:lite2 , "" , "NONE")
call <sid>hi("cssColor"             , s:lite2 , "" , "NONE")
call <sid>hi("cssIncludeKeyword"    , s:lite2 , "" , "NONE")
call <sid>hi("cssMediaType"         , s:lite2 , "" , "NONE")
call <sid>hi("cssFontDescriptor"    , s:lite2 , "" , "NONE")
call <sid>hi("cssPseudoClassId"     , s:lite2 , "" , "NONE")
call <sid>hi("cssSelectorOp"        , s:lite2 , "" , "NONE")
call <sid>hi("cssSelectorOp2"       , s:lite2 , "" , "NONE")
call <sid>hi("cssFunctionName"      , s:lite2 , "" , "NONE")
call <sid>hi("cssInclude"           , s:lite2 , "" , "NONE")
call <sid>hi("cssImportant"         , s:lite2 , "" , "NONE")
call <sid>hi("cssValueNumber"       , s:lite1 , "" , "NONE")
call <sid>hi("cssAttr"              , s:lite1 , "" , "NONE")
call <sid>hi("cssValueLength"       , s:lite1 , "" , "NONE")
call <sid>hi("cssValueAngle"        , s:lite1 , "" , "NONE")
call <sid>hi("cssValueTime"         , s:lite1 , "" , "NONE")
call <sid>hi("cssCommonAttr"        , s:lite1 , "" , "NONE")
call <sid>hi("cssTransitionAttr"    , s:lite1 , "" , "NONE")
call <sid>hi("cssAnimationAttr"     , s:lite1 , "" , "NONE")
call <sid>hi("cssKeyFrame"          , s:lite1 , "" , "NONE")
call <sid>hi("cssUnicodeEscape"     , s:lite1 , "" , "NONE")
call <sid>hi("cssIdentifier"        , s:turqo , "" , "NONE")
call <sid>hi("cssTagName"           , s:turqo , "" , "NONE")
call <sid>hi("cssClassName"         , s:turqo , "" , "NONE")
call <sid>hi("cssClassNameDot"      , s:turqo , "" , "NONE")
call <sid>hi("cssKeyFrameSelector"  , s:turqo , "" , "NONE")

" PHP highlighting
call <sid>hi("phpRegion"          , s:neutr , "" , "NONE")
call <sid>hi("phpParent"          , s:lite2 , "" , "NONE")
call <sid>hi("phpOperator"        , s:lite2 , "" , "NONE")
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
call <sid>hi("jsObjectProp"        , s:lite3 , "" , "NONE")
call <sid>hi("jsStorageClass"      , s:lite3 , "" , "NONE")
call <sid>hi("jsParens"            , s:lite2 , "" , "NONE")
call <sid>hi("jsFuncBraces"        , s:lite2 , "" , "NONE")
call <sid>hi("jsIfElseBraces"      , s:lite2 , "" , "NONE")
call <sid>hi("jsRepeatBraces"      , s:lite2 , "" , "NONE")
call <sid>hi("jsObjectBraces"      , s:lite2 , "" , "NONE")
call <sid>hi("jsSwitchBraces"      , s:lite2 , "" , "NONE")
call <sid>hi("jsTryCatchBraces"    , s:lite2 , "" , "NONE")
call <sid>hi("jsBrackets"          , s:lite2 , "" , "NONE")
call <sid>hi("jsThis"              , s:lite2 , "" , "NONE")
call <sid>hi("jsFunction"          , s:mint0 , "" , "NONE")
call <sid>hi("jsFuncParens"        , s:lite2 , "" , "NONE")
call <sid>hi("jsGlobalObjects"     , s:lite2 , "" , "NONE")
call <sid>hi("javaScript"          , s:mint0 , "" , "NONE")
call <sid>hi("jsFuncCall"          , s:mint0 , "" , "NONE")
call <sid>hi("jsNumber"            , s:lite1 , "" , "NONE")
call <sid>hi("jsBooleanTrue"       , s:lite1 , "" , "NONE")
call <sid>hi("jsBooleanFalse"      , s:lite1 , "" , "NONE")
call <sid>hi("jsBuiltins"          , s:mint0 , "" , "NONE")
call <sid>hi("jsUndefined"         , s:lite1 , "" , "NONE")
call <sid>hi("jsFloat"             , s:mint0 , "" , "NONE")
call <sid>hi("jsNull"              , s:lite1 , "" , "NONE")
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
call <sid>hi("jsop"                , s:lite2 , "" , "NONE")
call <sid>hi("jsjq"                , s:mint0 , "" , "NONE")
call <sid>hi("jsKwd"               , s:mint0 , "" , "NONE")
call <sid>hi("jsObjKwd"            , s:mint0 , "" , "NONE")
call <sid>hi("jsMtd"               , s:fluor , "" , "NONE")
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
call <sid>hi("javaScriptBraces"      , s:lite2 , "" , "NONE")
call <sid>hi("javaScriptParens"      , s:lite2 , "" , "NONE")

" VimScript
call <sid>hi("vimNotation"  , s:lite2 , "" , "NONE")
call <sid>hi("vimMapModKey" , s:lite2 , "" , "NONE")

" Diff highlighting
call <sid>hi("DiffChange"  , ""      , s:diffc , "NONE")
call <sid>hi("DiffText"    , s:white , s:difft , "NONE")
call <sid>hi("DiffAdd"     , ""      , s:diffa , "NONE")
call <sid>hi("DiffDelete"  , s:diffd , s:diffd , "NONE")

" Git highlighting
call <sid>hi("gitCommitOverflow" , s:magen , "" , "NONE")
call <sid>hi("gitCommitSummary"  , s:lite3 , "" , "NONE")

" GitGutter highlighting
call <sid>hi("GitGutterAdd"          , s:turqo , s:dark2 , "NONE")
call <sid>hi("GitGutterChange"       , s:lime0 , s:dark2 , "NONE")
call <sid>hi("GitGutterDelete"       , s:magen , s:dark2 , "NONE")
call <sid>hi("GitGutterChangeDelete" , s:lite2 , s:dark2 , "NONE")

" Markdown highlighting
call <sid>hi("markdownCode"             , s:turqo , ""      , "NONE")
call <sid>hi("markdownError"            , s:magen , s:dark1 , "NONE")
call <sid>hi("markdownCodeBlock"        , s:turqo , ""      , "NONE")
call <sid>hi("markdownHeadingDelimiter" , s:lite2 , ""      , "NONE")

" SASS highlighting
call <sid>hi("sassidChar"                 , s:magen , "" , "NONE")
call <sid>hi("sassClassChar"              , s:magen , "" , "NONE")
call <sid>hi("sassInclude"                , s:lite2 , "" , "NONE")
call <sid>hi("sassMixing"                 , s:lite2 , "" , "NONE")
call <sid>hi("sassMixinName"              , s:lite3 , "" , "NONE")
call <sid>hi("sassVariable"               , s:magen , "" , "NONE")
call <sid>hi("sassClass"                  , s:magen , "" , "NONE")
call <sid>hi("sassProperty"               , s:lite3 , "" , "NONE")
call <sid>hi("sassDefinition"             , s:lite3 , "" , "NONE")
call <sid>hi("sassCssAttribute"           , s:lite2 , "" , "NONE")
call <sid>hi("sassInterpolationDelimiter" , s:lite2 , "" , "NONE")
call <sid>hi("sassVariableAssignment"     , s:lite3 , "" , "NONE")

" Spelling highlighting
call <sid>hi("SpellBad"   , "" , s:dark1 , "undercurl")
call <sid>hi("SpellLocal" , "" , s:dark1 , "undercurl")
call <sid>hi("SpellCap"   , "" , s:dark1 , "undercurl")
call <sid>hi("SpellRare"  , "" , s:dark1 , "undercurl")

" CtrlP
" Buffer explorer mode
call <sid>hi("CtrlPBufferNr"     , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferInd"    , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferHid"    , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferHidMod" , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferVis"    , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferVisMod" , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferCur"    , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferCurMod" , s:lite1 , ""      , "NONE")
call <sid>hi("CtrlPBufferPath"   , s:lite1 , ""      , "NONE")
" For the CtrlP buffer:
call <sid>hi("CtrlPLinePre"      , s:dark1 , s:dark1 , "NONE") " the line prefix '>' in the match window
call <sid>hi("CtrlPMatch"        , s:pink0 , ""      , "NONE")
" Highlight groups:
call <sid>hi("CtrlPMode2"        , s:neutr , s:black , "NONE") " 'prt' or 'win' , 'regex' , the working directory (|hl-LineNr|)
call <sid>hi("CtrlPMode1"        , s:lite3 , s:black , "NONE") " 'file' or 'path' or 'line' , and the current mode (Character)

" COC
call <sid>hi("CocErrorSign"          , s:magen , "" , "NONE")
call <sid>hi("CocWarningSign"        , s:fluor , "" , "NONE")
call <sid>hi("CocInfoSign"           , s:indig , "" , "NONE")
call <sid>hi("CocHintSign"           , s:turqo , "" , "NONE")
call <sid>hi("CocErrorVirtualText"   , s:dark3 , "" , "NONE")
call <sid>hi("CocWarningVirtualText" , s:dark3 , "" , "NONE")
call <sid>hi("CocInfoVirtualText"    , s:dark3 , "" , "NONE")
call <sid>hi("CocHintVirtualText"    , s:dark3 , "" , "NONE")
call <sid>hi("CocErrorFloat"         , s:lite2 , "" , "NONE")
call <sid>hi("CocWarningFloat"       , s:lite2 , "" , "NONE")
call <sid>hi("CocInfoFloat"          , s:lite2 , "" , "NONE")
call <sid>hi("CocHintFloat"          , s:lite2 , "" , "NONE")
call <sid>hi("CocErrorHighlight"     , ""      , "" , "undercurl")
call <sid>hi("CocWarningHighlight"   , ""      , "" , "undercurl")
call <sid>hi("CocInfoHighlight"      , ""      , "" , "undercurl")
call <sid>hi("CocHintHighlight"      , ""      , "" , "undercurl")

" Remove functions
delf <sid>hi
delf <sid>gui

" Remove color variables
unlet s:black s:dark1 s:dark2 s:dark3 s:neutr s:lite3 s:lite2 s:lite1 s:white s:fluor s:lime0 s:mint0 s:turqo s:blue0 s:indig s:purpl s:magen s:pink0 s:diffa s:difft s:diffc s:diffd
