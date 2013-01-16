<?php
session_start();
require_once('classes/post.php');
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>School Website Template</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style>
#middle fieldset{
	width:70%;
	float:right;
}
</style>
<script src="js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/tiny_mce/jquery.tinymce.js"></script>
<script type="text/javascript">
	$().ready(function() {
		$('textarea.tinymce').tinymce({
			// Location of TinyMCE script
			script_url : 'js/tiny_mce/tiny_mce.js',

			// General options
			theme : "advanced",
			plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",

			// Theme options
			theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
			theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
			theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
			theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
			theme_advanced_toolbar_location : "top",
			theme_advanced_toolbar_align : "left",
			theme_advanced_statusbar_location : "bottom",
			theme_advanced_resizing : true,

			// Example content CSS (should be your site CSS)
			//content_css : "css/content.css",

			// Drop lists for link/image/media/template dialogs
			template_external_list_url : "lists/template_list.js",
			external_link_list_url : "lists/link_list.js",
			external_image_list_url : "lists/image_list.js",
			media_external_list_url : "lists/media_list.js",

			// Replace values for the template plugin
			template_replace_values : {
				username : "Some User",
				staffid : "991234"
			}
		});
	});
</script>
</head>
<body>
	<div id="page">
	<?php include_once('parts/header.php');?>
		<div id="middle">
			<!--
			<fieldset>
				<legend>New Post</legend>
				<form method="post" action="post.save.php">
				<p>Title: <input width="100" type="text" name="txtTitle"/></p>
				<p>Content</p>
				<textarea class="tinymce" name="txtContent"></textarea>
				<p>UserID:<input type="text" name="txtID"/> Password:<input type="password" name="txtPass"/></p>
				<p><input type="submit" name="btnSubmit" value="Post" style="float:right;"/></p>
				</form>
			</fieldset>
			-->
			<?php
			$posts = Post::get_list_desc();
			foreach($posts as $post){
			?>
			<div class="board">
			<h1><?php echo $post->title;?></h1>
			<p class="author">Author : <?php echo $post->user_id;?></p>
			<p class="meta date">Posted on : <?php echo $post->date_added;?></p>
			<?php echo $post->content;?>
			</div>
			<?php } ?>
		</div>
		<div id="middle2">
			<div id="caption2" class="captions">
			<h1>Admission</h1>
				<p>Guidelines and Procedures for Admission.</p><div class=rightalign><a href="#" class="button-small">Readmore..>></a></div>
			</div>	
			<div id="contactbox">
			<h1>Contact Us</h1>
				<p>In eget dolor augue. Suspendisse urna erat, accumsan vitae scelerisque sed, ultricies nec lectus. Curabitur sagittis, nisi a <a href="#">condimentum</a> laoreet, libero nisi congue.</p>
				<h2>+123.45.678.91.01</h2>
			</div>
			<div id="caption3" class="captions">
				<h1></h1>
				<p> <a href="#">condimentum</a> laoreet...</p><div class=rightalign><a href="#" class="button-small">Read More..>></a></div>
			</div>
			
		</div>
		<?php include_once('parts/footer.php');?>
	</div>
</body>
</html>