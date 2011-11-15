<?php
class HawkeyeSpotlightPersonPage extends Page {

	public static $db = array(
		"PreviewText" => "HTMLText",
		"School" => "Text"
	);

	public static $has_one = array(
		"Image" => "Image"
		 
	);
		
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");
		$fields->addFieldToTab("Root.Content.Main", new TextField("School", "Person in the spotlight's school/subtitle"));
		$fields->addFieldToTab("Root.Content.Main", new ImageField("Image"));
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("PreviewText","Preview text visible on homepage (optional) If blank, the homepage will grab the first paragraph of the main description)", 4));
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content","Main Description of Spotlighted Person"));
		return $fields;
	}
		

}
class HawkeyeSpotlightPersonPage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}