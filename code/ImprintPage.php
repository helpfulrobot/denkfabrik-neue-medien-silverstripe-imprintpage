<?php


/**
 * Pagetype to display the informations required
 * for the imprint of an website.
 * 
 * Requires the silverstripe-siteinfo module!
 * 
 * @author marcokernler
 *
 */
class ImprintPage extends Page
{
	/**
	 * 
	 */
	public static $icon = "imprintpage/images/icons/imprintpage.png";
	
	/**
	 * 
	 */
	public static $singular_name = "Impressum Seite";
	
	/**
	 * 
	 */
	public static $plural_name = "Impressum Seiten";
	
	/**
	 * 
	 */
	public static $description = "Stellt nötige Informationen für das Impressum dar";
}



/**
 * 
 * @author marcokernler
 *
 */
class ImprintPage_Controller extends Page_Controller
{
	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array();

	
	/**
	 * (non-PHPdoc)
	 * @see sapphire/core/control/ContentController#init()
	 */
	public function init()
	{
		parent::init();
		
		// 	checks for the active environment type, to load minified css and js files if in live mode
		if(Director::get_environment_type() == "dev" || Director::get_environment_type() == "test")
		{
			Requirements::css("imprintpage/css/imprint.css");
		}
		else
		{
			Requirements::css("imprintpage/css/imprint.min.css");
		}
	}
}
?>