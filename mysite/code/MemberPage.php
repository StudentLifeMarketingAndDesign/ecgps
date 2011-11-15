<?php
class MemberPage extends Page {

	public static $db = array(
	
		"FirstName" => "Text",
		"LastName" => "Text",
		"SchoolYear" => "Text",
		"Position" => "Text",
		"HometownAndState" => "Text",
		"MajorMinor" => "Text",
		"CommitteeAssignment" => "Text"
	
	);

	public static $has_one = array(
	
		"MainImage" => "Image"
	
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage','Main Image (300x300)'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('FirstName','First Name'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('LastName','Last Name'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Position','Position in ECGPS'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('HometownAndState','Hometown and State'));

		$fields->addFieldToTab('Root.Content.Main', new TextField('MajorMinor','Major and/or Minor'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('CommitteeAssignment','Committee Assignment'));
		
		
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','About/Biography'));

		return $fields;
	}
	

}
class MemberPage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	
	public function init() {
		parent::init();
	}
}