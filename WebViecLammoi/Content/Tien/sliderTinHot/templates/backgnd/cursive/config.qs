/* config.js */
params.PageBgColor = params.PageBgColor||"#d7d7d7";

slideshow_css = '$CssPath$style.css';
thumbs = {margin: 3, padding: 1};

files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-cursive.eot', dest: '$CssPath$ws-ctrl-cursive.eot' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-cursive.svg', dest: '$CssPath$ws-ctrl-cursive.svg' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-cursive.ttf', dest: '$CssPath$ws-ctrl-cursive.ttf' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-cursive.woff', dest: '$CssPath$ws-ctrl-cursive.woff' });


if (params.Thumbnails || params.ShowBullets){
	params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}

params.addCss += [
	"",
	"@font-face {",
	"  font-family: 'ws-ctrl-cursive';",
	"  src: url('ws-ctrl-cursive.eot');",
	"  src: url('ws-ctrl-cursive.eot#iefix') format('embedded-opentype'),",
	"       url('ws-ctrl-cursive.svg#ws-ctrl-cursive') format('svg');",
	"  font-weight: normal;",
	"  font-style: normal;",
	"}",
	"@font-face {",
	"  font-family: 'ws-ctrl-cursive';",
	"  src: url('data:application/octet-stream;base64,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') format('woff'),",
	"       url('data:application/octet-stream;base64,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') format('truetype');",
	"}"
].join('\n');


// call this function at the end of each template
finalize();