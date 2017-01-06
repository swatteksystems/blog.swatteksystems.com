/*! normalize.css v2.1.3 | MIT License | git.io/normalize */

/\* ========================================================================== HTML5 display definitions ========================================================================== \*/

/\*\* \* Correct `block` display not defined in IE 8/9. \*/

article, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary { display: block; }

/\*\* \* Correct `inline-block` display not defined in IE 8/9. \*/

audio, canvas, video { display: inline-block; }

/\*\* \* Prevent modern browsers from displaying `audio` without controls. \* Remove excess height in iOS 5 devices. \*/

audio:not(\[controls\]) { display: none; height: 0; }

/\*\* \* Address `[hidden]` styling not present in IE 8/9. \* Hide the `template` element in IE, Safari, and Firefox &lt; 22. \*/

\[hidden\], template { display: none; }

/\* ========================================================================== Base ========================================================================== \*/

/\*\* \* 1. Set default font family to sans-serif. \* 2. Prevent iOS text size adjust after orientation change, without disabling \* user zoom. \*/

html { font-family: sans-serif; /\* 1 */ -ms-text-size-adjust: 100%; /* 2 */ -webkit-text-size-adjust: 100%; /* 2 \*/ }

/\*\* \* Remove default margin. \*/

body { margin: 0; }

/\* ========================================================================== Links ========================================================================== \*/

/\*\* \* Remove the gray background color from active links in IE 10. \*/

a { background: transparent; }

/\*\* \* Address `outline` inconsistency between Chrome and other browsers. \*/

a:focus { outline: thin dotted; }

/\*\* \* Improve readability when focused and also mouse hovered in all browsers. \*/

a:active, a:hover { outline: 0; }

/\* ========================================================================== Typography ========================================================================== \*/

/\*\* \* Address variable `h1` font-size and margin within `section` and `article` \* contexts in Firefox 4+, Safari 5, and Chrome. \*/

h1 { font-size: 2em; margin: 0.67em 0; }

/\*\* \* Address styling not present in IE 8/9, Safari 5, and Chrome. \*/

abbr\[title\] { border-bottom: 1px dotted; }

/\*\* \* Address style set to `bolder` in Firefox 4+, Safari 5, and Chrome. \*/

b, strong { font-weight: bold; }

/\*\* \* Address styling not present in Safari 5 and Chrome. \*/

dfn { font-style: italic; }

/\*\* \* Address differences between Firefox and other browsers. \*/

hr { -moz-box-sizing: content-box; box-sizing: content-box; height: 0; }

/\*\* \* Address styling not present in IE 8/9. \*/

mark { background: \#ff0; color: \#000; }

/\*\* \* Correct font family set oddly in Safari 5 and Chrome. \*/

code, kbd, pre, samp { font-family: monospace, serif; font-size: 1em; }

/\*\* \* Improve readability of pre-formatted text in all browsers. \*/

pre { white-space: pre-wrap; }

/\*\* \* Set consistent quote types. \*/

q { quotes: “01C” “01D” “018” “019”; }

/\*\* \* Address inconsistent and variable font size in all browsers. \*/

small { font-size: 80%; }

/\*\* \* Prevent `sub` and `sup` affecting `line-height` in all browsers. \*/

sub, sup { font-size: 75%; line-height: 0; position: relative; vertical-align: baseline; }

sup { top: -0.5em; }

sub { bottom: -0.25em; }

/\* ========================================================================== Embedded content ========================================================================== \*/

/\*\* \* Remove border when inside `a` element in IE 8/9. \*/

img { border: 0; }

/\*\* \* Correct overflow displayed oddly in IE 9. \*/

svg:not(:root) { overflow: hidden; }

/\* ========================================================================== Figures ========================================================================== \*/

/\*\* \* Address margin not present in IE 8/9 and Safari 5. \*/

figure { margin: 0; }

/\* ========================================================================== Forms ========================================================================== \*/

/\*\* \* Define consistent border, margin, and padding. \*/

fieldset { border: 1px solid \#c0c0c0; margin: 0 2px; padding: 0.35em 0.625em 0.75em; }

/\*\* \* 1. Correct `color` not being inherited in IE 8/9. \* 2. Remove padding so people aren’t caught out if they zero out fieldsets. \*/

legend { border: 0; /\* 1 */ padding: 0; /* 2 \*/ }

/\*\* \* 1. Correct font family not being inherited in all browsers. \* 2. Correct font size not being inherited in all browsers. \* 3. Address margins set differently in Firefox 4+, Safari 5, and Chrome. \*/

button, input, select, textarea { font-family: inherit; /\* 1 */ font-size: 100%; /* 2 */ margin: 0; /* 3 \*/ }

/\*\* \* Address Firefox 4+ setting `line-height` on `input` using `!important` in \* the UA stylesheet. \*/

button, input { line-height: normal; }

/\*\* \* Address inconsistent `text-transform` inheritance for `button` and `select`. \* All other form control elements do not inherit `text-transform` values. \* Correct `button` style inheritance in Chrome, Safari 5+, and IE 8+. \* Correct `select` style inheritance in Firefox 4+ and Opera. \*/

button, select { text-transform: none; }

/\*\* \* 1. Avoid the WebKit bug in Android 4.0.\* where (2) destroys native `audio` \* and `video` controls. \* 2. Correct inability to style clickable `input` types in iOS. \* 3. Improve usability and consistency of cursor style between image-type \* `input` and others. \*/

button, html input\[type=“button”\], /\* 1 */ input\[type=“reset”\], input\[type=“submit”\] { -webkit-appearance: button; /* 2 */ cursor: pointer; /* 3 \*/ }

/\*\* \* Re-set default cursor for disabled elements. \*/

button\[disabled\], html input\[disabled\] { cursor: default; }

/\*\* \* 1. Address box sizing set to `content-box` in IE 8/9/10. \* 2. Remove excess padding in IE 8/9/10. \*/

input\[type=“checkbox”\], input\[type=“radio”\] { box-sizing: border-box; /\* 1 */ padding: 0; /* 2 \*/ }

/\*\* \* 1. Address `appearance` set to `searchfield` in Safari 5 and Chrome. \* 2. Address `box-sizing` set to `border-box` in Safari 5 and Chrome \* (include `-moz` to future-proof). \*/

input\[type=“search”\] { -webkit-appearance: textfield; /\* 1 */ -moz-box-sizing: content-box; -webkit-box-sizing: content-box; /* 2 \*/ box-sizing: content-box; }

/\*\* \* Remove inner padding and search cancel button in Safari 5 and Chrome \* on OS X. \*/

input\[type=“search”\]::-webkit-search-cancel-button, input\[type=“search”\]::-webkit-search-decoration { -webkit-appearance: none; }

/\*\* \* Remove inner padding and border in Firefox 4+. \*/

button::-moz-focus-inner, input::-moz-focus-inner { border: 0; padding: 0; }

/\*\* \* 1. Remove default vertical scrollbar in IE 8/9. \* 2. Improve readability and alignment in all browsers. \*/

textarea { overflow: auto; /\* 1 */ vertical-align: top; /* 2 \*/ }

/\* ========================================================================== Tables ========================================================================== \*/

/\*\* \* Remove most spacing between table cells. \*/

table { border-collapse: collapse; border-spacing: 0; }

.go-top { position: fixed; bottom: 2em; right: 2em; text-decoration: none; background-color: \#E0E0E0; font-size: 12px; padding: 1em; display: inline; }

/\* Github css \*/

html,body{ margin: auto; padding-right: 1em; padding-left: 1em; max-width: 44em; color:black;}*:not(‘\#mkdbuttons’){margin:0;padding:0}body{font:13.34px helvetica,arial,freesans,clean,sans-serif;-webkit-font-smoothing:subpixel-antialiased;line-height:1.4;padding:3px;background:\#fff;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px}p{margin:1em 0}a{color:\#4183c4;text-decoration:none}body{background-color:\#fff;padding:30px;margin:15px;font-size:14px;line-height:1.6}body&gt;*:first-child{margin-top:0!important}body&gt;\*:last-child{margin-bottom:0!important}@media screen{body{box-shadow:0 0 0 1px \#cacaca,0 0 0 4px \#eee}}h1,h2,h3,h4,h5,h6{margin:20px 0 10px;padding:0;font-weight:bold;-webkit-font-smoothing:subpixel-antialiased;cursor:text}h1{font-size:28px;color:\#000}h2{font-size:24px;border-bottom:1px solid \#ccc;color:\#000}h3{font-size:18px;color:\#333}h4{font-size:16px;color:\#333}h5{font-size:14px;color:\#333}h6{color:\#777;font-size:14px}p,blockquote,table,pre{margin:15px 0}ul{padding-left:30px}ol{padding-left:30px}ol li ul:first-of-type{margin-top:0}hr{background:transparent url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAECAYAAACtBE5DAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6OENDRjNBN0E2NTZBMTFFMEI3QjRBODM4NzJDMjlGNDgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6OENDRjNBN0I2NTZBMTFFMEI3QjRBODM4NzJDMjlGNDgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo4Q0NGM0E3ODY1NkExMUUwQjdCNEE4Mzg3MkMyOUY0OCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo4Q0NGM0E3OTY1NkExMUUwQjdCNEE4Mzg3MkMyOUY0OCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqqezsUAAAAfSURBVHjaYmRABcYwBiM2QSA4y4hNEKYDQxAEAAIMAHNGAzhkPOlYAAAAAElFTkSuQmCC) repeat-x 0 0;border:0 none;color:\#ccc;height:4px;padding:0}body&gt;h2:first-child{margin-top:0;padding-top:0}body&gt;h1:first-child{margin-top:0;padding-top:0}body&gt;h1:first-child+h2{margin-top:0;padding-top:0}body&gt;h3:first-child,body&gt;h4:first-child,body&gt;h5:first-child,body&gt;h6:first-child{margin-top:0;padding-top:0}a:first-child h1,a:first-child h2,a:first-child h3,a:first-child h4,a:first-child h5,a:first-child h6{margin-top:0;padding-top:0}h1+p,h2+p,h3+p,h4+p,h5+p,h6+p,ul li&gt;:first-child,ol li&gt;:first-child{margin-top:0}dl{padding:0}dl dt{font-size:14px;font-weight:bold;font-style:italic;padding:0;margin:15px 0 5px}dl dt:first-child{padding:0}dl dt&gt;:first-child{margin-top:0}dl dt&gt;:last-child{margin-bottom:0}dl dd{margin:0 0 15px;padding:0 15px}dl dd&gt;:first-child{margin-top:0}dl dd&gt;:last-child{margin-bottom:0}blockquote{border-left:4px solid \#DDD;padding:0 15px;color:\#777}blockquote&gt;:first-child{margin-top:0}blockquote&gt;:last-child{margin-bottom:0}table{border-collapse:collapse;border-spacing:0;font-size:100%;font:inherit}table th{font-weight:bold;border:1px solid \#ccc;padding:6px 13px}table td{border:1px solid \#ccc;padding:6px 13px}table tr{border-top:1px solid \#ccc;background-color:\#fff}table tr:nth-child(2n){background-color:\#f8f8f8}img{max-width:100%}code,tt{margin:0 2px;padding:0 5px;white-space:nowrap;border:1px solid \#eaeaea;background-color:\#f8f8f8;border-radius:3px;font-family:Consolas,‘Liberation Mono’,Courier,monospace;font-size:12px;color:\#333}pre&gt;code{margin:0;padding:0;white-space:pre;border:0;background:transparent}.highlight pre{background-color:\#f8f8f8;border:1px solid \#ccc;font-size:13px;line-height:19px;overflow:auto;padding:6px 10px;border-radius:3px}pre{background-color:\#f8f8f8;border:1px solid \#ccc;font-size:13px;line-height:19px;overflow:auto;padding:6px 10px;border-radius:3px}pre code,pre tt{background-color:transparent;border:0}.poetry pre{font-family:Georgia,Garamond,serif!important;font-style:italic;font-size:110%!important;line-height:1.6em;display:block;margin-left:1em}.poetry pre code{font-family:Georgia,Garamond,serif!important;word-break:break-all;word-break:break-word;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;white-space:pre-wrap}sup,sub,a.footnote{font-size:1.4ex;height:0;line-height:1;vertical-align:super;position:relative}sub{vertical-align:sub;top:-1px}@media print{body{background:\#fff}img,pre,blockquote,table,figure{page-break-inside:avoid}body{background:\#fff;border:0}code{background-color:\#fff;color:\#333!important;padding:0 .2em;border:1px solid \#dedede}pre{background:\#fff}pre code{background-color:white!important;overflow:visible}}@media screen{body.inverted{color:\#eee!important;border-color:\#555;box-shadow:none}.inverted body,.inverted hr .inverted p,.inverted td,.inverted li,.inverted h1,.inverted h2,.inverted h3,.inverted h4,.inverted h5,.inverted h6,.inverted th,.inverted .math,.inverted caption,.inverted dd,.inverted dt,.inverted blockquote{color:\#eee!important;border-color:\#555;box-shadow:none}.inverted td,.inverted th{background:\#333}.inverted h2{border-color:\#555}.inverted hr{border-color:\#777;border-width:1px!important}::selection{background:rgba(157,193,200,0.5)}h1::selection{background-color:rgba(45,156,208,0.3)}h2::selection{background-color:rgba(90,182,224,0.3)}h3::selection,h4::selection,h5::selection,h6::selection,li::selection,ol::selection{background-color:rgba(133,201,232,0.3)}code::selection{background-color:rgba(0,0,0,0.7);color:\#eee}code span::selection{background-color:rgba(0,0,0,0.7)!important;color:\#eee!important}a::selection{background-color:rgba(255,230,102,0.2)}.inverted a::selection{background-color:rgba(255,230,102,0.6)}td::selection,th::selection,caption::selection{background-color:rgba(180,237,95,0.5)}.inverted{background:\#0b2531;background:\#252a2a}.inverted body{background:\#252a2a}.inverted a{color:\#acd1d5}}.highlight .c{color:\#998;font-style:italic}.highlight .err{color:\#a61717;background-color:\#e3d2d2}.highlight .k,.highlight .o{font-weight:bold}.highlight .cm{color:\#998;font-style:italic}.highlight .cp{color:\#999;font-weight:bold}.highlight .c1{color:\#998;font-style:italic}.highlight .cs{color:\#999;font-weight:bold;font-style:italic}.highlight .gd{color:\#000;background-color:\#fdd}.highlight .gd .x{color:\#000;background-color:\#faa}.highlight .ge{font-style:italic}.highlight .gr{color:\#a00}.highlight .gh{color:\#999}.highlight .gi{color:\#000;background-color:\#dfd}.highlight .gi .x{color:\#000;background-color:\#afa}.highlight .go{color:\#888}.highlight .gp{color:\#555}.highlight .gs{font-weight:bold}.highlight .gu{color:\#800080;font-weight:bold}.highlight .gt{color:\#a00}.highlight .kc,.highlight .kd,.highlight .kn,.highlight .kp,.highlight .kr{font-weight:bold}.highlight .kt{color:\#458;font-weight:bold}.highlight .m{color:\#099}.highlight .s{color:\#d14}.highlight .na{color:\#008080}.highlight .nb{color:\#0086b3}.highlight .nc{color:\#458;font-weight:bold}.highlight .no{color:\#008080}.highlight .ni{color:\#800080}.highlight .ne,.highlight .nf{color:\#900;font-weight:bold}.highlight .nn{color:\#555}.highlight .nt{color:\#000080}.highlight .nv{color:\#008080}.highlight .ow{font-weight:bold}.highlight .w{color:\#bbb}.highlight .mf,.highlight .mh,.highlight .mi,.highlight .mo{color:\#099}.highlight .sb,.highlight .sc,.highlight .sd,.highlight .s2,.highlight .se,.highlight .sh,.highlight .si,.highlight .sx{color:\#d14}.highlight .sr{color:\#009926}.highlight .s1{color:\#d14}.highlight .ss{color:\#990073}.highlight .bp{color:\#999}.highlight .vc,.highlight .vg,.highlight .vi{color:\#008080}.highlight .il{color:\#099}.highlight .gc{color:\#999;background-color:\#eaf2f5}.type-csharp .highlight .k,.type-csharp .highlight .kt{color:\#00F}.type-csharp .highlight .nf{color:\#000;font-weight:normal}.type-csharp .highlight .nc{color:\#2b91af}.type-csharp .highlight .nn{color:\#000}.type-csharp .highlight .s,.type-csharp .highlight .sc{color:\#a31515}

[Skip to content.](https://blog.swatteksystems.com#documentContent) | [Skip to navigation](https://blog.swatteksystems.com#portlet-navigation-tree)

Search Site <span>Search</span>

[Advanced Search…](https://blog.swatteksystems.com/old/search_form)

-   [Site Map](https://blog.swatteksystems.com/old/sitemap "Site Map")
-   [Accessibility](https://blog.swatteksystems.com/old/accessibility-info "Accessibility")
-   [Contact](https://blog.swatteksystems.com/old/contact-info "Contact")

<a href="https://blog.swatteksystems.com" id="portal-logo"><img src="https://blog.swatteksystems.com/old/logo.png" title="logo.png" width="426" height="103" /></a>

##### Sections

-   [Home](https://blog.swatteksystems.com)
-   [News](https://blog.swatteksystems.com/old/news "Site News")
-   [Events](https://blog.swatteksystems.com/old/events "Site Events")

<span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left">
<dl>
<dt>
<span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/old/topics" class="tile">Tag Cloud</a> <span class="portletTopRight"></span>
</dt>
<dd>
<a href="https://blog.swatteksystems.com/old/topics/CRTC" class="cloudItem tagRank_0" title="1 entries">CRTC</a> <a href="https://blog.swatteksystems.com/old/topics/Canada" class="cloudItem tagRank_2" title="5 entries">Canada</a> <a href="https://blog.swatteksystems.com/old/topics/Comedy" class="cloudItem tagRank_0" title="1 entries">Comedy</a> <a href="https://blog.swatteksystems.com/old/topics/Debian" class="cloudItem tagRank_0" title="1 entries">Debian</a> <a href="https://blog.swatteksystems.com/old/topics/HP" class="cloudItem tagRank_2" title="4 entries">HP</a> <a href="https://blog.swatteksystems.com/old/topics/Liveaboard" class="cloudItem tagRank_0" title="1 entries">Liveaboard</a> <a href="https://blog.swatteksystems.com/old/topics/Music" class="cloudItem tagRank_0" title="1 entries">Music</a> <a href="https://blog.swatteksystems.com/old/topics/NFS" class="cloudItem tagRank_0" title="2 entries">NFS</a> <a href="https://blog.swatteksystems.com/old/topics/Ontario%20Linux%20Fest" class="cloudItem tagRank_0" title="2 entries">Ontario Linux Fest</a> <a href="https://blog.swatteksystems.com/old/topics/OpenSolaris" class="cloudItem tagRank_7" title="12 entries">OpenSolaris</a> <a href="https://blog.swatteksystems.com/old/topics/Oshawa" class="cloudItem tagRank_0" title="1 entries">Oshawa</a> <a href="https://blog.swatteksystems.com/old/topics/Plone%203" class="cloudItem tagRank_2" title="4 entries">Plone 3</a> <a href="https://blog.swatteksystems.com/old/topics/SXCE" class="cloudItem tagRank_0" title="1 entries">SXCE</a> <a href="https://blog.swatteksystems.com/old/topics/Sailing" class="cloudItem tagRank_0" title="1 entries">Sailing</a> <a href="https://blog.swatteksystems.com/old/topics/Solaris" class="cloudItem tagRank_4" title="7 entries">Solaris</a> <a href="https://blog.swatteksystems.com/old/topics/Sun" class="cloudItem tagRank_6" title="10 entries">Sun</a> <a href="https://blog.swatteksystems.com/old/topics/Thunderbird" class="cloudItem tagRank_0" title="1 entries">Thunderbird</a> <a href="https://blog.swatteksystems.com/old/topics/Toronto" class="cloudItem tagRank_5" title="8 entries">Toronto</a> <a href="https://blog.swatteksystems.com/old/topics/Trailer%20Park%20Boys" class="cloudItem tagRank_0" title="1 entries">Trailer Park Boys</a> <a href="https://blog.swatteksystems.com/old/topics/U7519" class="cloudItem tagRank_0" title="1 entries">U7519</a> <a href="https://blog.swatteksystems.com/old/topics/ahci" class="cloudItem tagRank_0" title="1 entries">ahci</a> <a href="https://blog.swatteksystems.com/old/topics/bios" class="cloudItem tagRank_0" title="1 entries">bios</a> <a href="https://blog.swatteksystems.com/old/topics/bug" class="cloudItem tagRank_1" title="3 entries">bug</a> <a href="https://blog.swatteksystems.com/old/topics/calendar" class="cloudItem tagRank_0" title="1 entries">calendar</a> <a href="https://blog.swatteksystems.com/old/topics/co-operation" class="cloudItem tagRank_0" title="2 entries">co-operation</a> <a href="https://blog.swatteksystems.com/old/topics/community" class="cloudItem tagRank_2" title="5 entries">community</a> <a href="https://blog.swatteksystems.com/old/topics/design" class="cloudItem tagRank_0" title="1 entries">design</a> <a href="https://blog.swatteksystems.com/old/topics/dv7%201245ca" class="cloudItem tagRank_2" title="4 entries">dv7 1245ca</a> <a href="https://blog.swatteksystems.com/old/topics/facebook" class="cloudItem tagRank_0" title="1 entries">facebook</a> <a href="https://blog.swatteksystems.com/old/topics/flash" class="cloudItem tagRank_0" title="1 entries">flash</a> <a href="https://blog.swatteksystems.com/old/topics/google" class="cloudItem tagRank_0" title="2 entries">google</a> <a href="https://blog.swatteksystems.com/old/topics/guest" class="cloudItem tagRank_0" title="1 entries">guest</a> <a href="https://blog.swatteksystems.com/old/topics/guide" class="cloudItem tagRank_5" title="8 entries">guide</a> <a href="https://blog.swatteksystems.com/old/topics/help" class="cloudItem tagRank_0" title="2 entries">help</a> <a href="https://blog.swatteksystems.com/old/topics/host" class="cloudItem tagRank_0" title="1 entries">host</a> <a href="https://blog.swatteksystems.com/old/topics/howto" class="cloudItem tagRank_6" title="10 entries">howto</a> <a href="https://blog.swatteksystems.com/old/topics/huawei" class="cloudItem tagRank_0" title="1 entries">huawei</a> <a href="https://blog.swatteksystems.com/old/topics/huawei%20tap" class="cloudItem tagRank_0" title="1 entries">huawei tap</a> <a href="https://blog.swatteksystems.com/old/topics/laptop" class="cloudItem tagRank_2" title="4 entries">laptop</a> <a href="https://blog.swatteksystems.com/old/topics/linux" class="cloudItem tagRank_4" title="7 entries">linux</a> <a href="https://blog.swatteksystems.com/old/topics/linuxfest" class="cloudItem tagRank_0" title="1 entries">linuxfest</a> <a href="https://blog.swatteksystems.com/old/topics/logging" class="cloudItem tagRank_0" title="1 entries">logging</a> <a href="https://blog.swatteksystems.com/old/topics/migration" class="cloudItem tagRank_0" title="1 entries">migration</a> <a href="https://blog.swatteksystems.com/old/topics/net%20neutrality" class="cloudItem tagRank_0" title="1 entries">net neutrality</a> <a href="https://blog.swatteksystems.com/old/topics/open%20source" class="cloudItem tagRank_3" title="6 entries">open source</a> <a href="https://blog.swatteksystems.com/old/topics/opensolaris" class="cloudItem tagRank_10" title="15 entries">opensolaris</a> <a href="https://blog.swatteksystems.com/old/topics/portlet" class="cloudItem tagRank_0" title="1 entries">portlet</a> <a href="https://blog.swatteksystems.com/old/topics/quills" class="cloudItem tagRank_0" title="1 entries">quills</a> <a href="https://blog.swatteksystems.com/old/topics/sata" class="cloudItem tagRank_0" title="1 entries">sata</a> <a href="https://blog.swatteksystems.com/old/topics/security" class="cloudItem tagRank_0" title="2 entries">security</a> <a href="https://blog.swatteksystems.com/old/topics/site%20outage" class="cloudItem tagRank_0" title="1 entries">site outage</a> <a href="https://blog.swatteksystems.com/old/topics/swag" class="cloudItem tagRank_0" title="1 entries">swag</a> <a href="https://blog.swatteksystems.com/old/topics/tabs" class="cloudItem tagRank_0" title="1 entries">tabs</a> <a href="https://blog.swatteksystems.com/old/topics/tether" class="cloudItem tagRank_0" title="1 entries">tether</a> <a href="https://blog.swatteksystems.com/old/topics/ubuntu" class="cloudItem tagRank_0" title="2 entries">ubuntu</a> <a href="https://blog.swatteksystems.com/old/topics/unix" class="cloudItem tagRank_5" title="9 entries">unix</a> <a href="https://blog.swatteksystems.com/old/topics/user%20group" class="cloudItem tagRank_3" title="6 entries">user group</a> <a href="https://blog.swatteksystems.com/old/topics/user%20interface" class="cloudItem tagRank_0" title="1 entries">user interface</a> <a href="https://blog.swatteksystems.com/old/topics/virtualbox" class="cloudItem tagRank_0" title="1 entries">virtualbox</a> <a href="https://blog.swatteksystems.com/old/topics/virtualhost" class="cloudItem tagRank_0" title="2 entries">virtualhost</a> <a href="https://blog.swatteksystems.com/old/topics/web2.0" class="cloudItem tagRank_6" title="10 entries">web2.0</a> <a href="https://blog.swatteksystems.com/old/topics/webcam" class="cloudItem tagRank_0" title="1 entries">webcam</a> <a href="https://blog.swatteksystems.com/old/topics/weblog%20admin" class="cloudItem tagRank_0" title="1 entries">weblog admin</a> <a href="https://blog.swatteksystems.com/old/topics/wind%20mobile" class="cloudItem tagRank_0" title="1 entries">wind mobile</a> <a href="https://blog.swatteksystems.com/old/topics/windmobile" class="cloudItem tagRank_0" title="1 entries">windmobile</a>
</dd>
<dd>
<span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <span class="tile">Weblog Archive</span> <span class="portletTopRight"></span>
</dt>
<dd>
<ul>
<li>
<h5 id="section">
2008
</h5>
<ul>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2008/08"><span>August</span> (<strong>4</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2008/09"><span>September</span> (<strong>2</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2008/10"><span>October</span> (<strong>1</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2008/11"><span>November</span> (<strong>1</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2008/12"><span>December</span> (<strong>6</strong>)</a>
</li>
</ul>
</li>
</ul>
<ul>
<li>
<h5 id="section-1">
2009
</h5>
<ul>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2009/04"><span>April</span> (<strong>4</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2009/07"><span>July</span> (<strong>1</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2009/08"><span>August</span> (<strong>4</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2009/09"><span>September</span> (<strong>5</strong>)</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2009/10"><span>October</span> (<strong>3</strong>)</a>
</li>
</ul>
</li>
</ul>
<ul>
<li>
<h5 id="section-2">
2010
</h5>
<ul>
<li>
<a href="https://blog.swatteksystems.com/old/archive/2010/03"><span>March</span> (<strong>1</strong>)</a>
</li>
</ul>
</li>
</ul>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <span class="tile">Quills</span> <span class="portletTopRight"></span>
</dt>
<dd>
<a href="https://blog.swatteksystems.com/old/atom.xml"><img src="https://blog.swatteksystems.com/old/atom_feed.gif" title="Atom Enabled" alt="Atom" width="80" height="15" /></a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/feed.rdf"><img src="https://blog.swatteksystems.com/old/rdf_feed.gif" title="Semantic feed" alt="RDF" width="80" height="15" /></a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/rss.xml"><img src="https://blog.swatteksystems.com/old/rss_feed.gif" title="RSS 2.0 feed" alt="RSS 2.0" width="80" height="15" /></a>
</dd>
<dd>
<a href="https://plone.org/products/quills"><img src="https://blog.swatteksystems.com/old/quills_powered.gif" title="Quills weblog system for Plone" alt="Powered by Quills" width="80" height="15" /></a> <span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/old/login_form" class="tile">Log in</a> <span class="portletTopRight"></span>
</dt>
<dd>
Login Name<br />

Password<br />

Cookies are not enabled. You must enable cookies before you can log in.

</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/mail_password_form" class="tile"><img src="https://blog.swatteksystems.com/old/info_icon.gif" width="16" height="16" /> Forgot your password?</a> <span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/old/login_form" class="tile">OpenID Log in</a> <span class="portletTopRight"></span>
</dt>
<dd>
OpenID URL<br />

</dd>
</dl>

 

</td>
<td align="left">
<span id="breadcrumbs-you-are-here">You are here:</span> <a href="https://blog.swatteksystems.com">Home</a>

<span id="contentTopLeft"></span> <span id="contentTopRight"></span> <a href="https://blog.swatteksystems.com/old/"></a>
<dl>
<dt>
Info
</dt>
<dd>
</dd>
</dl>

<h1 id="whats-that" class="documentFirstHeading">
Whats That?
</h1>
<p>
Blog
</p>
<h2 id="mar-07-2010">
Mar 07, 2010
</h2>
<h2 id="tether-huawei-u7519-wind-mobile-linux" class="weblog-view-entry-title">
<a href="https://blog.swatteksystems.com/old/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux">Tether Huawei U7519 Wind Mobile Linux</a>
</h2>
<a href="https://blog.swatteksystems.com/old/topics/Toronto"></a> <a href="https://blog.swatteksystems.com/old/topics/windmobile"></a> <a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/huawei%20tap"></a> <a href="https://blog.swatteksystems.com/old/topics/linux"></a> <a href="https://blog.swatteksystems.com/old/topics/howto"></a> <a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/wind%20mobile"></a> <a href="https://blog.swatteksystems.com/old/topics/huawei"></a> <a href="https://blog.swatteksystems.com/old/topics/ubuntu"></a> <a href="https://blog.swatteksystems.com/old/topics/tether"></a> <a href="https://blog.swatteksystems.com/old/topics/guide"></a> <a href="https://blog.swatteksystems.com/old/topics/U7519"></a>

Filed Under:

<ul>
<li>
<a href="https://blog.swatteksystems.com/old/topics/Toronto">Toronto</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/windmobile">windmobile</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/huawei%20tap">huawei tap</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/linux">linux</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/howto">howto</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/wind%20mobile">wind mobile</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/huawei">huawei</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/ubuntu">ubuntu</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/tether">tether</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/guide">guide</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/U7519">U7519</a>
</li>
</ul>

<p>
The following steps will enable the use of your Wind Mobile Huawei U7519 as a 3G modem.
</p>
<p>
Recently I bought  a Huawei U7519 phone on the Wind Mobile service. The phone tethers using Windows but what use is that to me?  Here is how I made it work using Linux.
</p>
<p>
As root:
</p>
<p>
 
</p>
<p>
echo “option”  &gt;&gt; /etc/modules
</p>
<p>
edit /etc/rc.local and add before exit 0: echo ‘12d1 101e’ &gt; /sys/bus/usb-serial/drivers/option1/new\_id 
</p>
<p>
 
</p>
<p>
Download and install the software as per the instructions at this link: https://www.draisberghof.de/usb\_modeswitch/
</p>
<p>
 
</p>
<p>
You should be able to plugin your device and will have a /dev/ttyUSB0 (which you can confirm with ls /dev/ttyU\*
</p>
<p>
Now you can right click your NetworkManager in the panel and edit connections &gt; mobile broadband &gt; add t-mobile internet then edit that profile like so: mobile broadband &gt; apn = internet.windmobile.ca
</p>
also edit PPP  and deselect allow bsd ..  and deselect allow  deflate
<p>
 
</p>
<p>
You can also select connect automatically on the mobile broadband tab.
</p>
<p>
Surfs up!
</p>

<h2 id="oct-31-2009">
Oct 31, 2009
</h2>
<h2 id="after-ontario-linuxfest-2009" class="weblog-view-entry-title">
<a href="https://blog.swatteksystems.com/old/archive/2009/10/31/day-after-ontario-linux-fest-2009">After Ontario LinuxFest 2009</a>
</h2>
<a href="https://blog.swatteksystems.com/old/topics/Toronto"></a> <a href="https://blog.swatteksystems.com/old/topics/opensolaris"></a> <a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/open%20source"></a> <a href="https://blog.swatteksystems.com/old/topics/Sun"></a> <a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/Ontario%20Linux%20Fest"></a> <a href="https://blog.swatteksystems.com/old/topics/OpenSolaris"></a> <a href="https://blog.swatteksystems.com/old/topics/linuxfest"></a> <a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/user%20group"></a>

Filed Under:

<ul>
<li>
<a href="https://blog.swatteksystems.com/old/topics/Toronto">Toronto</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/opensolaris">opensolaris</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/open%20source">open source</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/Sun">Sun</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/Ontario%20Linux%20Fest">Ontario Linux Fest</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/OpenSolaris">OpenSolaris</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/linuxfest">linuxfest</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/https://blog.swatteksystems.com/old/topics/user%20group">user group</a>
</li>
</ul>

<p>
I was at the Ontario GNU Linux Fest 2009 and what a time it was!
</p>
<p>
We kicked off Friday night with a welcome party at the hotel. I had some great conversations with fellow speakers and attendees, sharing the cool things we are working on as well as a few drinks and some appetisers.opinions
</p>
<p>
<a href="https://weait.com/" class="external-link">Richard Weait</a>, one of the event organisers, introduced himself to me and did a fine job of making me feel welcome and appreciated, as he did throughout the event. Hell, he even helped me load-in on Saturday morning!
</p>
<p>
Many attendees flocked to our OpenSolaris booth, where we were handing out the brand new ZFS Administration Guide, which went like hotcakes, OpenSolaris CDs and Getting Started Guide. Thanks to Teresa Giacomini and the great team at Sun. A number of people came by whom I helped with installs (bare metal & virtualbox). Questions abounded from both noobs and Solaris veterans. Of course the ubiquitous “How is the Oracle/Sun deal going to affect OpenSolaris?” came up many times .. too bad I didn’t have a copy of this FAQ: <a href="https://www.oracle.com/us/sun/038563.pdf" class="uri" class="external-link">https://www.oracle.com/us/sun/038563.pdf</a> to elaborate, though my <em>opinions</em> answered similarly.
</p>
<p>
Later in the afternoon I gave my presentation “<a href="https://onlinux.ca/node/124" class="external-link">Why OpenSolaris?</a>” to a full room (about 70 people). After my slides we engaged in a Q & A session, followed by some door prizes (provided by our great event organisers) for two questions I culled from my talk. They were both answered correctly and quickly. Glad to see everyone was paying attention! For those that came by our booth after, I gave the remaining OpenSolaris t-shirts.
</p>
<p>
A great dinner was put on for the speakers Saturday evening, with the Google sponsored party following (thanks for the GoogleBooze!), where we all had a chance to continue some great conversations.
</p>
<p>
This was an excellent experience and highly recommended .. can’t wait for Ontario LinuxFest 2010!
</p>

<h2 id="oct-20-2009">
Oct 20, 2009
</h2>
<h2 id="sxce-to-opensolaris-migration-on-sparc" class="weblog-view-entry-title">
<a href="https://blog.swatteksystems.com/old/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc">SXCE to OpenSolaris Migration on Sparc</a>
</h2>
<a href="https://blog.swatteksystems.com/old/topics/SXCE"></a> <a href="https://blog.swatteksystems.com/old/topics/Solaris"></a> <a href="https://blog.swatteksystems.com/old/topics/Sun"></a> <a href="https://blog.swatteksystems.com/old/topics/howto"></a> <a href="https://blog.swatteksystems.com/old/topics/OpenSolaris"></a> <a href="https://blog.swatteksystems.com/old/topics/opensolaris"></a> <a href="https://blog.swatteksystems.com/old/topics/migration"></a> <a href="https://blog.swatteksystems.com/old/topics/guide"></a>

Filed Under:

<ul>
<li>
<a href="https://blog.swatteksystems.com/old/topics/SXCE">SXCE</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/Solaris">Solaris</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/Sun">Sun</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/howto">howto</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/OpenSolaris">OpenSolaris</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/opensolaris">opensolaris</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/migration">migration</a>
</li>
<li>
<a href="https://blog.swatteksystems.com/old/topics/guide">guide</a>
</li>
</ul>

<p>
Using some already existing blogs/mail-lists and elbow grease, I’ve migrated a SPARC server to OpenSolaris from SXCE.
</p>
<p>
With SXCE EOL coming up fast and the AI not quite up to speed (for this instance at any rate), I’ve cobbled together and carried out a migration of a Sun e220r sparc box from SXCE.
</p>
<p>
I used quite abit from <a href="https://blogs.sun.com/edp" class="external-link">Edward Pilatowicz’s blog</a> and also <a href="https://alexeremin.blogspot.com/2009/07/minimal-opensolaris-sparc-install.html" class="external-link">Alex Eremin’s blog</a> . I altered/diverged to suit my needs as well due to things changing rapidly in OpenSolaris.
</p>
<p>
I built IPS from the gate, more details on IPS and the mercurial url here:<a href="https://opensolaris.org/os/project/pkg/" class="uri" class="external-link">https://opensolaris.org/os/project/pkg/</a> . With that installed proceeded to create an new root pool on a separate disk.
</p>
<p>
I utilized the following from Edward’s blog, where I’ve diverged/changed I have commented out the original and noted beside my change:
</p>
<pre><code># we&#39;re going to do our install in /a
PKG_IMAGE=/a; export PKG_IMAGE

# mount our zpool on /a
mkdir -p $PKG_IMAGE
mount -F zfs rpool/ROOT/opensolaris $PKG_IMAGE
mkdir -p $PKG_IMAGE/opt
mount -F zfs rpool/ROOT/opensolaris/opt $PKG_IMAGE/opt

# create the basic opensolaris install image.
#pkg image-create -F -a opensolaris.org=https://pkg.opensolaris.org $PKG_IMAGE
pkg image-create -f -F -a opensolaris.org=https://pkg.opensolaris.org/dev $PKG_IMAGE # Sparc requires the dev repos
#pkg refresh
pkg -R $PKG_IMAGE refresh --full # We&#39;re not clobbering our original or changing it so the next few are mine too
pkg -R $PKG_IMAGE install entire
pkg -R $PKG_IMAGE install SUNWcsd SUNWcs
pkg -R $PKG_IMAGE install babel_install

# seed the initial smf repository
cp $PKG_IMAGE/lib/svc/seed/global.db $PKG_IMAGE/etc/svc/repository.db
chmod 0600 $PKG_IMAGE/etc/svc/repository.db
chown root:sys $PKG_IMAGE/etc/svc/repository.db

# setup smf profiles
ln -s ns_files.xml $PKG_IMAGE/var/svc/profile/name_service.xml
ln -s generic_limited_net.xml $PKG_IMAGE/var/svc/profile/generic.xml
ln -s inetd_generic.xml $PKG_IMAGE/var/svc/profile/inetd_services.xml
ln -s platform_none.xml $PKG_IMAGE/var/svc/profile/platform.xml</code></pre>
<p>
 
</p>
<p>
After that I finished with:
</p>
<p>
echo “rpool/ROOT/opensolaris  -  /  zfs  -  no  -” &gt;&gt; $PKG\_IMAGE/etc/vfstab
</p>
<p>
echo “rpool/ROOT/opensolaris/opt  -  /opt  zfs  -  yes  -” &gt;&gt; $PKG\_IMAGE/etc/vfstab
</p>
<pre><code>devfsadm -r $PKG_IMAGE

bootadm update-archive -R $PKG_IMAGE

installboot -F zfs /platform/$(uname -i)/lib/fs/zfs/bootblk /dev/rdsk/c0t0d0s0</code></pre>
<p>
 
</p>
<p>
 Copying relevant networking, passwd, ssh keys, etc. files from the running SXCE system to $PKG\_IMAGE, I successfully booted to my OpenSolaris install and tweaked from there.
</p>

<span class="next"> <a href="https://blog.swatteksystems.com/old/weblog_view?b_start:int=3&amp;-C=">Next 3 items »</a> </span> <span class="current">1</span> <a href="https://blog.swatteksystems.com/old/weblog_view?b_start:int=3&amp;-C=">2</a> <a href="https://blog.swatteksystems.com/old/weblog_view?b_start:int=6&amp;-C=">3</a> <a href="https://blog.swatteksystems.com/old/weblog_view?b_start:int=9&amp;-C=">4</a> <span> … <a href="https://blog.swatteksystems.com/old/weblog_view?b_start:int=30&amp;-C=">11</a> </span>

<h5 id="document-actions" class="hiddenStructure">
Document Actions
</h5>
<ul>
<li>

<a href="https://blog.swatteksystems.com/old/sendto_form">Send this</a>
</li>
<li>

<a href="javascript:this.print();">Print this</a>
</li>
</ul>

<span id="contentBottomLeft"></span> <span id="contentBottomRight"></span>

</td>
<td align="left">
<dl>
<dt>
<span class="portletTopLeft"></span> <span class="tile">Recent Entries</span> <span class="portletTopRight"></span>
</dt>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2010/03/07/tether-huawei-u7519-wind-mobile-linux">Tether Huawei U7519 Wind Mobile Linux</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/31/day-after-ontario-linux-fest-2009">After Ontario LinuxFest 2009</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc">SXCE to OpenSolaris Migration on Sparc</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/07/presenting-at-ontario-gnu-linux-fest-2009">Presenting at Ontario GNU Linux Fest 2009</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/09/30/toronto-opensolaris-linux-fest">Toronto Opensolaris @ Linux Fest</a>
</dd>
<dd>
<span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <span class="tile">Recent Comments</span> <span class="portletTopRight"></span>
</dt>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/04/22/trailer-park-boys-oshawa-show#1267971424">The Trailer Park Boys (Paul)</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc#1263748895">Thanks Jake! (admin)</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/20/sxce-to-opensolaris-migration-on-sparc#1263590714">How to build ipkg from mercurial (Jake)</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/31/day-after-ontario-linux-fest-2009#1258517273">Thanks (admin)</a>
</dd>
<dd>
<a href="https://blog.swatteksystems.com/old/archive/2009/10/31/day-after-ontario-linux-fest-2009#1258512620">Why OpenSolaris video (Charles McColm)</a>
</dd>
</dl>

<dl>
<dt>
<span class="portletTopLeft"></span> <a href="https://blog.swatteksystems.com/old/authors" class="tile">Weblog Authors</a> <span class="portletTopRight"></span>
</dt>
<dd>
<h1 id="admin" class="documentFirstHeading">
<a href="https://blog.swatteksystems.com/old/authors/admin">admin</a>
</h1>
<p>
<a href="https://blog.swatteksystems.com/old/authors/admin"><img src="https://blog.swatteksystems.com/old/defaultUser.gif" title="admin" alt="admin" class="portraitPhoto" /></a>
</p>

</dd>
<dd>
<h1 id="https://swattek.pip.verisignlabs.com" class="documentFirstHeading">
<a href="https://blog.swatteksystems.com/old/authors/https://swattek.pip.verisignlabs.com/">https://swattek.pip.verisignlabs.com/</a>
</h1>
<p>
<a href="https://blog.swatteksystems.com/old/authors/https://swattek.pip.verisignlabs.com/"><img src="https://blog.swatteksystems.com/old/defaultUser.gif" title="https://swattek.pip.verisignlabs.com/" alt="https://swattek.pip.verisignlabs.com/" class="portraitPhoto" /></a>
</p>

</dd>
<dd>
<span class="portletBottomLeft"></span> <span class="portletBottomRight"></span>
</dd>
</dl>

 

</td>
</tr>
</tbody>
</table>
The [SwattekSystems<sup>®</sup> Blog — Powered by Plone](https://plone.org) is © 2000-2013 by [SwattekSystems](https://blog.swatteksystems.com) et al.

<span></span>

-   [Powered by Plone](https://plone.org "This site was built using Plone CMS, the Open Source Content Management System. Click for more information.")
-   [Valid XHTML](https://validator.w3.org/check/referer "This site is valid XHTML.")
-   [Valid CSS](https://jigsaw.w3.org/css-validator/check/referer?warning=no&profile=css3&usermedium=all "This site was built with valid CSS.")
-   [Section 508](https://www.section508.gov "This site conforms to the US Government Section 508 Accessibility Guidelines.")
-   [WCAG](https://www.w3.org/WAI/WCAG1AA-Conformance "This site conforms to the W3C-WAI Web Content Accessibility Guidelines.")

![](https://blog.swatteksystems.com/old/spinner.gif)
