<?php
session_start();

if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | MANAGE POSTS</title>
		<style>
		fieldset{
			width:500px;
			margin:auto;
			input[type=text], textarea{
				width:100%;
			}
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
		<body>
			<fieldset>
				<legend>New post</legend>
				<a href="admin.posts.php">Back To Posts</a>
				<form method="post" action="admin.newpost.php">
					<p>Title: <input size="100" type="text" name="txtTitle" value=""/></p>
					<p>Content</p>
					<textarea class="tinymce" cols="80" name="txtContent"></textarea>
					<p><input type="submit" name="btnSave" value="Save" style="float:right;"/></p>
				</form>
			</fieldset>
		</body>