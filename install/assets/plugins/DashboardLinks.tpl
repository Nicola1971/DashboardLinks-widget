/**
 * DashboardLinks 
 *
 * Dashboard Shortcut Links widget plugin for Evolution CMS
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    3.2
 * @license	   http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerWelcomeHome,OnManagerMainFrameHeaderHTMLBlock
 * @internal    @installset base
 * @internal    @modx_category Dashboard
 * @author      Nicola Lambathakis http://www.tattoocms.it/
 * @documentation Requirements: This plugin requires Evolution 1.4 or later
 * @reportissues https://github.com/Nicola1971/DashboardLinks-widget/issues
 * @link        
 * @lastupdate  27/01/2025
 * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;All &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username) &wdgTitle= Widget Title:;string;Shortcuts  &wdgicon= widget icon:;string;fa-link  &wdgposition=widget position:;text;1 &wdgsizex=widget width:;list;12,6,4,3;6 &WidgetChunk= Widget chunk:;string;tpl_Dashboard_CustomLinks
*/
$ThisRole = $ThisRole ?? '';
$ThisUser = $ThisUser ?? '';
$HeadBG = isset($HeadBG) ? trim($HeadBG) : '';
$HeadColor = isset($HeadColor) ? trim($HeadColor) : '';
$BodyBG = isset($BodyBG) ? trim($BodyBG) : '';
$BodyColor = isset($BodyColor) ? trim($BodyColor) : '';
// get manager role
$internalKey = $modx->getLoginUserID();
$sid = $modx->sid;
$role = $_SESSION['mgrRole'];
$user = $_SESSION['mgrShortname'];
// show widget only to Admin role 1
if(($role!=1) AND ($wdgVisibility == 'AdminOnly')) {}
// show widget to all manager users excluded Admin role 1
else if(($role==1) AND ($wdgVisibility == 'AdminExcluded')) {}
// show widget only to "this" role id
else if(($role!=$ThisRole) AND ($wdgVisibility == 'ThisRoleOnly')) {}
// show widget only to "this" username
else if(($user!=$ThisUser) AND ($wdgVisibility == 'ThisUserOnly')) {}
else {
// get language
global $modx,$_lang;
// get plugin id
$result = $modx->db->select('id', $this->getFullTableName("site_plugins"), "name='{$modx->event->activePlugin}' AND disabled=0");
$pluginid = $modx->db->getValue($result);
if($modx->hasPermission('edit_plugin')) {
$button_pl_config = '<a data-toggle="tooltip" href="javascript:;" title="' . $_lang["settings_config"] . '" class="text-muted pull-right float-right" onclick="parent.modx.popup({url:\''. MODX_MANAGER_URL.'?a=102&id='.$pluginid.'&tab=1\',title1:\'' . $_lang["settings_config"] . '\',icon:\'fa-cog\',iframe:\'iframe\',selector2:\'#tabConfig\',position:\'center center\',width:\'80%\',height:\'80%\',hide:0,hover:0,overlay:1,overlayclose:1})" ><i class="fa fa-cog"></i> </a>';
}
$modx->setPlaceholder('button_pl_config', $button_pl_config);
/*Widget Box */

$WidgetOutput = ''.$modx->getChunk(''.$WidgetChunk.'').'';

$e = &$modx->Event;
switch($e->name){
/*load styles with OnManagerMainFrameHeaderHTMLBlock*/
case 'OnManagerMainFrameHeaderHTMLBlock':
$cssOutput = '<link type="text/css" rel="stylesheet" href="../assets/plugins/dashboardlinks/css/colors.css">';
$e->output($cssOutput);
break;
case 'OnManagerWelcomeHome':
			$widgets['DashboardLinks'] = array(
				'menuindex' =>''.$wdgposition.'',
				'id' => 'DashboardLinks'.$pluginid.'',
				'cols' => 'col-md-'.$wdgsizex.'',
				'icon' => ''.$wdgicon.'',
				'title' => ''.$wdgTitle.' '.$button_pl_config.'',
				'body' => '<div class="card-body">'.$WidgetOutput.' </div>',
				'hide' => '0'
			);	
            $e->output(serialize($widgets));
    break;
}
}