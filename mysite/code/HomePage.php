<?php
class HomePage extends Page {

	public static $db = array(
	
	"Tagline" => "HTMLText",
	"ShowRandomProfile" => "Boolean"
	);

	public static $has_one = array(
	);
	
	public static $allowed_children = array ("HomePageSlider");
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main", "Content");

		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Tagline",null,4));
		$fields->addFieldToTab("Root.Content.Main", new CheckboxField("ShowRandomProfile","Show Random Spotlights on Homepage? If left unchecked, the topmost profile under \"Hawkeye Spotlight\" will be shown."));


		return $fields;
	
	
	}

}
class HomePage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}