Before do |scenario|
  browser_obj = ENV['browser']
  browser = ''
  case browser_obj
  when 'chrome'
    browser = Watir::Browser.new :chrome, acceptInsecureCerts: true
  when 'firefox'
    browser = Watir::Browser.new :firefox
  end
  # browser = Watir::Browser.new :firefox, acceptInsecureCerts: true
  $browser = browser
  $browser.driver.manage.window.maximize
end

After  do |scenario|
  $browser.close
end