class Loginpage
  attr_accessor :browser

  def initialize(browser)
    @browser = browser
  end

  def register_link
    @browser.link(text: "Register Now!")
  end
  def username
    @browser.input(name: "username")
  end
  def userpassword
    @browser.input(name: "password")
  end
  def loginbutton
    @browser.input(name: "signon")
  end
end