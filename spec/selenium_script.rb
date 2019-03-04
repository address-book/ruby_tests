require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

sleep 3

driver.quit
