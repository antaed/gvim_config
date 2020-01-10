let s:p = { 'normal': {}, 'command': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:black = [ '#000000', '0'   ] " #000000
let s:dark1 = [ '#27313F', '232' ] " #27313F
let s:dark2 = [ '#43556B', '235' ] " #43556B
let s:dark3 = [ '#5D7792', '237' ] " #5D7792
let s:neutr = [ '#859AB0', '241' ] " #859AB0
let s:lite3 = [ '#B3BFCB', '244' ] " #B3BFCB
let s:lite2 = [ '#DBE1E6', '248' ] " #DBE1E6
let s:lite1 = [ '#EAEDF0', '252' ] " #EAEDF0
let s:white = [ '#FFFFFF', '15'  ] " #FFFFFF
let s:fluor = [ '#82A11C', '148' ] " #82A11C
let s:turqo = [ '#00949F', '44'  ] " #00949F
let s:purpl = [ '#762EE1', '98'  ] " #762EE1
let s:magen = [ '#FF3369', '197' ] " #DC184D

let s:p.normal.left     = [ [ s:white , s:fluor ] , [ s:fluor , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.command.left    = [ [ s:white , s:turqo ] , [ s:turqo , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.insert.left     = [ [ s:white , s:magen ] , [ s:magen , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.visual.left     = [ [ s:white , s:purpl ] , [ s:purpl , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.replace.left    = [ [ s:white , s:turqo ] , [ s:turqo , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.inactive.left   = [ [ s:neutr , s:lite2 ] , [ s:dark3 , s:white ] , [ s:neutr , s:white ] ]
let s:p.normal.right    = [ [ s:fluor , s:white ] , [ s:fluor , s:white ] ]
let s:p.command.right   = [ [ s:turqo , s:white ] , [ s:turqo , s:white ] ]
let s:p.insert.right    = [ [ s:magen , s:white ] , [ s:magen , s:white ] ]
let s:p.visual.right    = [ [ s:purpl , s:white ] , [ s:purpl , s:white ] ]
let s:p.replace.right   = [ [ s:turqo , s:white ] , [ s:turqo , s:white ] ]
let s:p.inactive.right  = [ [ s:dark3 , s:white ] , [ s:dark3 , s:white ] ]
let s:p.normal.middle   = [ [ s:neutr , s:white ] ]
let s:p.command.middle  = [ [ s:neutr , s:white ] ]
let s:p.inactive.middle = [ [ s:neutr , s:white ] ]
let s:p.tabline.left    = [ [ s:neutr , s:white ] , [ s:neutr , s:white ] , [ s:neutr , s:white ] ]
let s:p.tabline.tabsel  = [ [ s:dark1 , s:lite3 ] ]
let s:p.tabline.middle  = [ [ s:neutr , s:white ] ]
let s:p.tabline.right   = [ [ s:white , s:white ] ]
let s:p.normal.error    = [ [ s:white , s:magen ] ]
let s:p.normal.warning  = [ [ s:white , s:magen ] ]
let s:p.command.error   = [ [ s:white , s:magen ] ]
let s:p.command.warning = [ [ s:white , s:magen ] ]

let g:lightline#colorscheme#antaed_light#palette = lightline#colorscheme#flatten(s:p)
