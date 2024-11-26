require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
caps = {}
# Set your access credentials
caps['browserstack.user'] = 'christinamarie_Fi3wpZ'
caps['browserstack.key'] = 't3La1pRW7H2bqmAs4ppr'
# Set URL of the application under test
caps['app'] = 'bs://86046e34a0ff065c0440a0e57171c4d0c3bfdb57'
# Specify device and os_version for testing
caps['device'] = 'iPhone 15 Pro Max'
caps['os_version'] = '17'
# Set other BrowserStack capabilities
caps['project'] = 'First Ruby project'
caps['build'] = 'Ruby iOS'
caps['name'] = 'single_test'
#Set the platform name
caps['platformName'] = 'iOS'
appium_driver = Appium::Driver.new({
	'caps' => caps,
	'appium_lib' => {
		:server_url => "https://hub-cloud.browserstack.com/wd/hub"
	}}, true)
driver = appium_driver.start_driver
