<?php
/*---------------------------------------------------------------------------
 * @Project: Alto CMS
 * @Project URI: http://altocms.com
 * @Description: Advanced Community Engine
 * @Copyright: Alto CMS Team
 * @License: GNU GPL v2 & MIT
 *----------------------------------------------------------------------------
 */
 
/**
 * Запрещаем напрямую через браузер обращение к этому файлу.
 */
if (!class_exists('Plugin')) {
	die('Hacking attemp!');
}

class PluginSidebarleft extends Plugin {

	// Инициализация плагина
	public function Init() {
        $this->Viewer_AppendScript(Plugin::GetTemplateDir(__CLASS__).'assets/js/sidebarleft.js');
		$this->Viewer_AppendStyle(Plugin::GetTemplateDir(__CLASS__).'assets/css/style.css');
	}
   
}
?>
