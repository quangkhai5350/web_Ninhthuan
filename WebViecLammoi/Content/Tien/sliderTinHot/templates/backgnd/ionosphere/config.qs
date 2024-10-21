/* config.js */
params.PageBgColor = params.PageBgColor||"#d7d7d7";
slideshow_css = '$CssPath$style.css';

thumbs = {margin: 5, padding: 3};
var border = { 'top': 0, 'right': 0, 'bottom': 3, 'left': 0 };

if (!parseInt(params.noFrame)){
    // frame border+shadow
    params.Border =  "3px solid #008AC3";
    files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-frame.css', 'dest': slideshow_css, 'filters': ['params'] } );
}

files.push({ 'src': 'backgnd/'+params.TemplateName+'/bullet.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/arrows.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/play.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/pause.png' });


if (params.Thumbnails || params.ShowBullets){
	params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);
	files.push(	{ 'src': 'backgnd/'+params.TemplateName+'/triangle-'+params.TooltipPos+'.png', dest: '$ImgPath$triangle.png' } );
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}


// call this function at the end of each template
finalize();

