<?php
class FundingPage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	
		 
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		//$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Group Shot'));


		return $fields;
	}
		

}
class FundingPage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}