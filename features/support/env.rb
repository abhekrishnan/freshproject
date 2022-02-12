require 'rubygems'
require 'rspec'
require 'watir'


Before do |scenario|
  browser = Watir::Browser.new
  $browser = browser
  $browser.driver.manage.window.maximize

end

After  do |scenario|
  $browser.close
end