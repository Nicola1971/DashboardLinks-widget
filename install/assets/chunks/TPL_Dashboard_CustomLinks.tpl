/**
 * tpl_Dashboard_CustomLinks
 *
 * Custom Links on Welcome Dashboard
 *
 * @version 	2.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @category	chunk
 * @internal    @modx_category Dashboard
 * @internal    @installset base, sample
 */
<!--example boostrap buttons url-->
<a href="../" target="_blank"><button class="btn btn-default" type="button"><i class="fa fa-eye"></i> Preview</button></a>
<a href="index.php?a=4"><button class="btn btn-info" type="button"><i class="fa fa-file"></i> New doc</button></a>
<a href="index.php?a=72"><button class="btn btn-warning" type="button"><i class="fa fa-link"></i> New Link</button></a>
<a href="index.php?a=71"><button class="btn btn-success" type="button"><i class="fa fa-search"></i> Search</button></a>
<a href="index.php?a=31"><button class="btn btn-danger" type="button"><i class="fa fa-folder-open"></i> File Manager</button></a>
<!--horiz separator-->
<div class="dashSeparator"></div>
<!---->
<!--Create a resource in a folder -  replace "2" with your blog folder id -->
<div class="wm_button"><a href="index.php?a=4&pid=2"><i class="icon-custom rounded-2x icon-bg-blue fa fa-pencil fa-2x "></i><br />New Blog Post</a></div>

<!--Edit a resource - replace "2" with your resouce id-->
<div class="wm_button"><a href="index.php?a=27&id=1"><i class="icon-custom rounded-2x icon-bg-red fa fa-home fa-2x fa-fw"></i><br />Edit HomePage</a></div>
<!--Create a resource-->
<div class="wm_button"><a href="index.php?a=4"><i class="icon-custom rounded-x icon-bg-dark fa fa-file fa-2x fa-fw"></i><br />New doc</a></div>
<div class="wm_button"><a href="index.php?a=72"><i class="icon-custom rounded-x icon-bg-orange fa fa-link fa-2x fa-fw"></i><br />New Link</a></div>
<div class="wm_button"><a href="index.php?a=71"><i class="icon-custom bordered-2x icon-color-green fa fa-search fa-2x fa-fw"></i><br />Search</a></div>
<div class="wm_button"><a href="index.php?a=31"><i class="icon-custom bordered-2x icon-color-yellow fa fa-folder-open fa-2x"></i><br />File Manager</a></div>
<div class="wm_button"><a href="media/browser/mcpuk/browse.php?&type=images"><i class="icon-custom bordered-2x icon-color-red fa fa-picture-o fa-2x fa-fw"></i><br />Gallery</a></div>
<!--horiz separator-->
<div class="dashSeparator"></div>
<!---->
<div class="wm_button"><a href="index.php?a=112&id=1"><i class="icon-color-sea icon-no-border fa fa-magic fa-2x"></i><br />Doc Manager</a></div>
<div class="wm_button"><a href="index.php?a=17"><i class="icon-color-blue icon-no-border fa fa-wrench fa-2x fa-fw"></i><br />Settings</a></div>
<div class="wm_button"><a href="index.php?a=75"><i class="icon-color-red icon-no-border fa fa-user fa-2x fa-fw"></i><br />Manager Users</a></div>
<div class="wm_button"><a href="index.php?a=114"><i class="icon-color-aqua icon-no-border fa fa-list-alt fa-2x fa-fw"></i><br />Error Log</a></div>
<div class="wm_button"><a href="index.php?a=93"><i class="icon-color-orange icon-no-border fa fa-database fa-2x"></i><br />Snapshot</a></div>
<div class="wm_button"><a href="../" target="_blank"><i class="icon-color-light-green icon-no-border fa fa-eye fa-2x fa-fw"></i><br />Preview</a></div>
<div class="wm_button"><a href="index.php?a=8" target="_blank"><i class="icon-color-purple icon-no-border fa fa-power-off fa-2x fa-fw"></i><br />Logout</a></div>