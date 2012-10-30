<?php
class Page extends SiteTree {

	public static $db = array(
		"AllowSubNav" => "Boolean"
	);

	public static $has_one = array(
	);
	
	function BlogPosts($limit = 0) {
		$posts = DataObject::get("BlogEntry", null, "Date DESC", "", $limit);
		return $posts;
	}
	
	function RandomPersonProfile() {
		$homepage = DataObject::get_one("HomePage");
		$persons = DataObject::get("HawkeyeSpotlightPersonPage");
		
		if($persons){
			$personsArray = $persons->ToArray();
			
			if ($homepage->ShowRandomProfile == 1){
				shuffle($personsArray);
			}
			
			if($personsArray[0]){ 
				return $personsArray[0];
			}
		}
	}

		function getCMSFields() {
				$fields = parent::getCMSFields();
				
				$fields->addFieldToTab("Root.Behaviour", new CheckboxField("AllowSubNav", "Display sub navigation if there are children pages?"));
						
				return $fields;
		}



}
class Page_Controller extends ContentController {

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
	public static $allowed_actions = array ('ContactForm');
	
	 function ContactForm() {
        // Create fields
        $recaptchaField = new RecaptchaField('MyCaptcha');
		$recaptchaField->jsOptions = array('theme' => 'white'); // optional   
		        
        $fields = new FieldSet(
            new TextField('Name', 'Your Name'),
            new EmailField('Email', 'Your Email Address'),
            new TextareaField('Comments','Comments? Questions?'),
            new LabelField('recaptchaLabel','Please enter the following words:'),
            $recaptchaField

        );
             
        // Create action
        $actions = new FieldSet(
            new FormAction('SendContactForm', 'Send')
        );
         
        // Create Validators
        $validator = new RequiredFields('Name', 'Email', 'Comments');
         
        return new Form($this, 'ContactForm', $fields, $actions, $validator);
    }
    
    
   function SendContactForm($data, $form) {
   		$config = SiteConfig::current_site_config(); 

        //Set data
        $From = $data['Email'];
        $To = $config->ToEmailAddress;
        $Subject = "Website Contact message";     
        $email = new Email($From, $To, $Subject);
        //set template
        $email->setTemplate('ContactEmail');
        //populate template
        $email->populateTemplate($data);
        //send mail
        $email->send();
        //return to submitted message
        Director::redirect("contact-success/");
    }


	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form'); 
		
		Validator::set_javascript_validation_handler('none'); 
		
	}
}