require 'report_builder'

Before do |scenario|
  browser = get_browser(BROWSER)
  @browser = browser
  @browser.driver.manage.window.maximize
  @browser.cookies.clear
end

After do |scenario|
  @browser.cookies.clear
  @browser.close
end

at_exit do
  ReportBuilder.build_report @options
end

@options = {
  json_path: 'reportArtifacts/',
  report_path: "reportArtifacts/ReportBUILD",
  html_report_path: "reportArtifacts/ReportBUILD",
  report_types: %i[json html],
  report_tabs: %w[features scenarios errors overview],
  report_title: 'Jpetstore Test Results',
  compress_images: true
}