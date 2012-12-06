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
{}



/**
 * 
 * @author mkernler
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
	
	
	/**
	 *  Return the data to the template
	 *  
	 *  @return A dataobject containing the imptrint data
	 */
	public function SiteInfo()
	{
		$siteConfig = DataObject::get("SiteConfig");
		
		return $siteConfig;
	}
	
	
	/**
	 * Return a obfuscated version of the defined
	 * email address.
	 */
	public function MailObfuscated()
	{
		$siteInfo = $this->SiteInfo();
		
		if(!$siteInfo) return;
		
		$siteConfig = $siteInfo->First();
		
		if(!$siteConfig) return;
		
		$email = $siteConfig->Email;
		
		return Email::obfuscate($email);
	}
}
?>