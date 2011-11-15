<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'koko.imu.uiowa.edu',
	"username" => 'ecgps',
	"password" => 'T7aFrUne',
	"database" => 'ecgps',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Object::add_extension('BlogTree_Controller', 'BlogTreeExtensions');
Director::set_environment_type("live");
Object::add_extension('SiteConfig', 'ContactFormConfig');
RecaptchaField::$public_api_key = '6LcjsAgAAAAAAD6MXE7QNLusIBMajgpfK_EWjL3C';
RecaptchaField::$private_api_key = '6LcjsAgAAAAAAJNAXp7BiEvEas6scIeWzQdaS87c';