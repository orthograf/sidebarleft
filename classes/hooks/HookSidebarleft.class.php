<?php
/*---------------------------------------------------------------------------
 * @Project: Alto CMS
 * @Project URI: http://altocms.com
 * @Description: Advanced Community Engine
 * @Copyright: Alto CMS Team
 * @License: GNU GPL v2 & MIT
 *----------------------------------------------------------------------------
 */

class PluginSidebarleft_HookSidebarleft extends Hook {

	public function RegisterHook() {
	    if (Router::GetAction() != 'admin') {
		    $this->AddHook('template_layout_body_begin','Sidebarleft');
	    }
		
	}
	
	public function Sidebarleft() {
		return $this->Viewer_Fetch(	Plugin::GetTemplateDir(__CLASS__).'tpls/widgets/widget.sidebarleft.tpl');
		
	}
	
}
?>
