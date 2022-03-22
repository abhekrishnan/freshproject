class Loginpage
  attr_accessor :browser

  def initialize(browser)
    @browser = browser
  end

  def register_link
    @browser.link(text: "Register Now!")
  end
  def username
    @browser.text_field(name: "username")
  end
  def userpassword
    @browser.text_field(name: "password")
  end
  def loginbutton
    @browser.input(name: "signon")
  end

  def error_message
    @browser.ul(class: "messages")
  end
end