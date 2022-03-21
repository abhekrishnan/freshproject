require 'rubygems'
require 'rspec'
require 'watir'
require 'webdrivers'
require 'report_builder'
require 'logger'

PROJECT_ROOT = Dir.pwd
BROWSER = ENV.fetch('browser', 'chrome')

FileUtils.makedirs('reportArtifacts')

LOGGER = Logger.new(STDOUT)
LOGGER.level = Logger::INFO


# Method to get browser object as per driver
# @param browser : string for browser object
# @return WATIR browser object
def get_browser(browser)
  case browser
  when 'chrome'
    Watir::Browser.new :chrome, acceptInsecureCerts: true
  when 'firefox'
    Watir::Browser.new :firefox
  end

end
