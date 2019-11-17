syn match jsjq "\$\(.\|(\)\@<="
syn match jsdt "\$dt\(.\|(\)\@<="
syn match jsprop "\.\zs\h\w*\ze"
syn match jsword "\h\w*" contains=jsKwd,jsObj,jsPrp,jsFxMtd,jsFxPrp
syn match jspct "[,;]"
syn match jsop "[-=+%^&|*!.~?:]"
syn match jsop "[-+*/%^&|.!=<>]="
syn match jsop "&&\|\<and\>"
syn match jsop "||\|\<x\=or\>"
syn match jsop "[<>]"
syn keyword jsKwd abstract arguments await boolean break byte case catch char class const continue debugger default delete do double else enum eval export extends false final finally float for function goto if implements import in instanceof int interface let long native new null package private protected public return short static super switch synchronized this throw throws transient true try typeof var void volatile while with yield Array Date eval function hasOwnProperty Infinity isFinite isNaN isPrototypeOf length Math NaN name Number Object prototype String toString undefined valueOf alert all anchor anchors area assign blur button checkbox clearInterval clearTimeout clientInformation close closed confirm constructor crypto decodeURI decodeURIComponent defaultStatus document element elements embed embeds encodeURI encodeURIComponent escape event fileUpload focus form forms frame innerHeight innerWidth layer layers link location mimeTypes navigate navigator frames frameRate hidden history image images offscreenBuffering open opener option outerHeight outerWidth packages pageXOffset pageYOffset parent parseFloat parseInt password pkcs11 plugin prompt propertyIsEnum radio reset screenX screenY scroll secure select self setInterval setTimeout status submit taint text textarea top unescape untaint window onblur onclick onerror onfocus onkeydown onkeypress onkeyup onmouseover onload onmouseup onmousedown onsubmit contained
syn keyword jsObjKwd callbacks deferred event jQuery console contained
syn keyword jsMtdKwd Callbacks Deferred UTC abs acos acosh add addBack addClass addEventListener adoptNode after ajax ajaxComplete ajaxError ajaxSend ajaxSetup ajaxStart ajaxStop ajaxSuccess ajaxTransport alert all always anchor and andSelf animate append appendChild appendTo apply asin asinh assign atan atan2 atanh atob attachShadow attr back before big bind blink blur bold btoa call cancelAnimationFrame cancelIdleCallback captureEvents caretPositionFromPoint caretRangeFromPoint catch cbrt ceil change charCodeAt children clear clearImmediate clearInterval clearQueue clearTimeout click clone cloneNode close closest clz32 codePointAt compare compareDocumentPosition compareExchange compile compileStreaming computedStyleMap concat confirm construct contents context contextMenu copyWithin cos cosh create createAttribute createAttributeNS createCDATASection createComment createDocumentFragment createElement createElementNS createEntityReference createEvent createExpression createImageBitmap createNSResolver createNodeIterator createProcessingInstruction createRange createShadowRoot createTextNode createTouch createTouchList createTreeWalker css customSections data dblclick defineProperties defineProperty delay delegate delete deleteProperty deprecated dequeue detach die disable disableExternalCapture disabled dispatchEvent done dump each elementFromPoint elementsFromPoint empty enableExternalCapture enableStyleSheetsForSet end endsWith entries enumerate contained
syn keyword jsMtdKwd eq error escapeSelector eval evaluate every exchange exec execCommand execCommandShowHelp exitPointerLock exp expm1 exports extend fadeIn fadeOut fadeTo fadeToggle fail fetch fill filter finally find findIndex finish fire fireWith fired first fixed flat flatMap floor focus focusin focusout fontcolor fontsize forEach format formatToParts forward freeze from fromCharCode fromCodePoint fromEntries fround get getAnimations getAttention getAttentionWithCycleCount getAttribute getAttributeNS getAttributeNames getAttributeNode getAttributeNodeNS getBoundingClientRect getBoxObjectFor getCanonicalLocales getClientRects getComputedStyle getDate getDay getDefaultComputedStyle getElementById getElementsByClassName getElementsByName getElementsByTagName getElementsByTagNameNS getFloat32 getFloat64 getFullYear getHours getInt16 getInt32 getInt8 getJSON getMilliseconds getMinutes getMonth getNotifer getOwnPropertyDescriptor getOwnPropertyDescriptors getOwnPropertyNames getOwnPropertySymbols getPrototypeOf getRootNode getScript getSeconds getSelection getTime getTimezoneOffset getUTCDate getUTCDay getUTCFullYear getUTCHours getUTCMilliseconds getUTCMinutes getUTCMonth getUTCSeconds getUint16 getUint32 getUint8 getYear globalEval grep grow has hasAttribute hasAttributeNS hasAttributes hasChildNodes hasClass hasData hasFocus hasOwnProperty hasPointerCapture hasStorageAccess height hide holdReady home hover html hypot importNode imports imul inArray includes index indexOf innerHeight innerWidth insertAdjacentElement insertAdjacentHTML insertAdjacentText insertAfter insertBefore instantiate instantiateStreaming is isArray isDefaultNamespace isDefaultPrevented isEmptyObject isEqualNode isExtensible isFinite isFrozen isFunction isGenerator isImmediatePropagationStopped isInteger isLockFree isNaN isNumeric isPlainObject isPropagationStopped isPrototypeOf isRejected isResolved isSafeInteger isSameNode isSealed isView isWindow isXMLDoc italics jQuery join jquery keydown keypress keys keyup last lastIndexOf length contained
syn keyword jsMtdKwd link live load loadOverlay localeCompare lock locked log log10 log1p log2 lookupNamespaceURI lookupPrefix makeArray map match matchMedia matches max maximize merge min minimize mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup move moveBy moveTo mozSetImageElement next nextAll nextUntil noConflict non-standard noop normalize normalizeDocument not notify notifyWith now observe of off offset offsetParent on one open openDialog or outerHeight outerWidth ownKeys padEnd padStart param parent parents parentsUntil parse parseFloat parseHTML parseInt parseJSON parseXML pipe pop position post postMessage pow prefilter prepend prependTo prev prevAll prevUntil preventDefault preventExtensions print progress promise prompt prop propertyIsEnumerable prototype.slice proxy pseudo push pushStack queryCommandEnabled queryCommandIndeterm queryCommandState queryCommandSupported queryCommandText queryCommandValue querySelector querySelectorAll queue quote race random raw ready reduce reduceRight reject rejectWith releaseCapture releaseEvents releasePointerCapture remove removeAttr removeAttribute removeAttributeNS removeAttributeNode removeChild removeClass removeData removeEventListener removeProp repeat replace replaceAll replaceChild replaceWith requestAnimationFrame requestFullscreen requestIdleCallback requestPointerLock requestStorageAccess resize resizeBy resizeTo resolve resolveWith resolvedOptions restore return reverse revocable round routeEvent scroll scrollBy scrollByLines scrollByPages scrollIntoView scrollLeft scrollTo scrollTop seal search select selector serialize serializeArray set setAttribute setAttributeNS setAttributeNode setAttributeNodeNS setCapture setCursor setDate setFloat32 setFloat64 setFullYear setHours setImmediate setInt16 setInt32 setInt8 setInterval setMilliseconds setMinutes setMonth setPointerCapture setPrototypeOf setResizable setSeconds setTime setTimeout setUTCDate setUTCFullYear setUTCHours setUTCMilliseconds setUTCMinutes setUTCMonth setUTCSeconds setUint16 setUint32 setUint8 setYear shift show showModalDialog siblings sign sin sinh size sizeToContent slice slideDown slideToggle slideUp small some sort splice split sqrt startsWith state stop stopImmediatePropagation stopPropagation store strike stringify sub subarray submit substr substring sup supportedLocalesOf tan tanh test text then throw toArray toDateString toExponential toFixed toGMTString toISOString toInteger toJSON toLocaleDateString toLocaleFormat toLocaleLowerCase toLocaleString toLocaleTimeString toLocaleUpperCase toLowerCase toPrecision toSource toString toTimeString toUTCString toUpperCase toggle toggleAttribute toggleClass transfer trigger triggerHandler trim trimEnd trimStart trunc type unbind undelegate unique uniqueSort unload unobserve unshift unwatch unwrap updateCommands val validate valueOf values wait watch when width wrap wrapAll wrapInner write writeln xor contained
syn match jsMtdMch +\<contains\>+ contained
syn keyword jsPrpKwd DOMMatrix DOMMatrixReadOnly DOMPoint DOMPointReadOnly DOMQuad DOMRect DOMRectReadOnly ScriptEngine ScriptEngineBuildVersion ScriptEngineMajorVersion ScriptEngineMinorVersion URL __defineGetter__ __defineSetter__ __lookupGetter__ __lookupSetter__ activeElement alinkColor all anchors applets atEnd attributes bgColor body browser characterSet charset childElementCount children classList className clientHeight clientLeft clientTop clientWidth compatMode computedName computedRole contentType cookie crypto cssHooks cssNumber currentScript currentTarget customElements data defaultStatus defaultView delegateTarget designMode devicePixelRatio dialogArguments dimensions dir directories doctype document documentElement documentURI documentURIObject domConfig domain embeds event featurePolicy fgColor fileSize firstElementChild fonts forms frameElement frames fullScreen fullscreen fullscreenElement getItem getVarDate globalStorage head height hidden history id images implementation indexedDB innerHTML innerHeight innerWidth inputEncoding isSecureContext lastElementChild lastModified lastStyleSheetSet length linkColor links localName localStorage location locationbar menubar messageManager metaKey mozAnimationStartTime mozInnerScreenX mozInnerScreenY mozPaintCount mozSyntheticDocument msUpdateAsyncCallbackRelation name namespace namespaceURI navigator nextElementSibling onabort onafterprint onafterscriptexecute onanimationcancel onanimationend onanimationiteration onanimationstart onappinstalled onauxclick onbeforeinstallprompt onbeforeprint onbeforescriptexecute onbeforeunload onblur oncancel oncanplay oncanplaythrough onchange onclick onclose oncontextmenu oncopy oncuechange oncut ondblclick ondevicelight ondevicemotion ondeviceorientation ondeviceorientationabsolute ondeviceproximity ondrag ondragend ondragenter ondragexit ondragleave ondragover ondragstart ondrop ondurationchange onemptied onended onerror onfocus onfullscreenchange onfullscreenerror ongamepadconnected ongamepaddisconnected ongotpointercapture onhashchange oninput oninvalid onkeydown onkeypress onkeyup onlanguagechange onload onloadeddata onloadedmetadata onloadend onloadstart onlostpointercapture onmessage onmousedown onmouseenter onmouseleave onmousemove onmouseout onmouseover onmouseup onmousewheel onmozbeforepaint onoffline ononline onpagehide onpageshow onpaint onpaste contained
syn keyword jsPrpKwd onpause onplay onplaying onpointercancel onpointerdown onpointerenter onpointerleave onpointerlockchange onpointerlockerror onpointermove onpointerout onpointerover onpointerup onpopstate onprogress onratechange onreadystatechange onrejectionhandled onreset onresize onscroll onseeked onseeking onselect onselectionchange onselectstart onshow onsort onstalled onstorage onsubmit onsuspend ontimeupdate ontouchcancel ontouchend ontouchmove ontouchstart ontransitioncancel ontransitionend ontransitionrun ontransitionstart onunhandledrejection onunload onuserproximity onvisibilitychange onvolumechange onvrdisplayactivate onvrdisplayblur onvrdisplayconnect onvrdisplaydeactivate onvrdisplaydisconnect onvrdisplayfocus onvrdisplaypresentchange onwaiting onwheel openOrClosedShadowRoot opener orientation origin outerHTML outerHeight outerWidth oxModel pageX pageXOffset pageY pageYOffset parent performance personalbar pkcs11 plugins pointerLockElement popupNode preferredStyleSheetSet prefix previousElementSibling readyState referrer relatedTarget removeEventListener result returnValue screen screenX screenY scripts scrollHeight scrollLeft scrollLeftMax scrollMaxX scrollMaxY scrollTop scrollTopMax scrollWidth scrollX scrollY scrollbars scrollingElement select selectedStyleSheetSet self sessionStorage shadowRootRead sidebar slot speechSynthesis speed status statusbar styleSheetSets styleSheets support tabStop tagName target timeStamp timeline title toArray toolbar tooltipNode top type ubound undoManager undoScope visibilityState visualViewport vlinkColor which width window write writeln xmlEncoding xmlStandalone xmlVersion contained
syn match jsObj "\h\w*\ze\.\w*" contains=jsObjKwd contained transparent nextgroup=jsMtd,jsPrp
syn match jsPrp "\(\w*\.\)\@<=\h\w*\([a-z](\)\@!" contains=jsPrpKwd,jsMtdMch contained transparent
syn match jsMtd "\h\w*\ze(" contains=jsMtdKwd,jsMtdMch
syn match jsFxMtd "\(jQuery\.\)\@<=fx\(\.\h\w*\)\@=" contained nextgroup=jsFxPrp
syn match jsFxPrp "\(jQuery\.fx\.\)\@<=\h\w*" contained
