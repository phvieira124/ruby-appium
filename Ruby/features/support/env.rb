require 'cucumber'
require 'appium_lib'

def caps
  { caps: {
      deviceName: "Redmi Note 7",
      udid: "a5b2cd6",
      platformName: "Android",
      platformVersion: "9.0",
      appPackage: "com.fooddelivery_pro",
      appActivity: "com.fooddelivery_pro.MainActivity",
      noReset: true,
      automationName: "Uiautomator2",
      newCommandTimeout: "5000"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object



