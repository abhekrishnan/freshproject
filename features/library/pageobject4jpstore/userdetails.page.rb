class Userdetailspage
  attr_accessor :browser

  def initialize(browser)
    @browser = browser
  end

  def user_info
    @browser.h3(text: "User Information")
  end

  def userid
    @browser.input(name: "username")
  end
  def password
    @browser.input(name: "password")
  end
  def repeatpassword
    @browser.input(name: "repeatedPassword")
  end
  def firstname
    @browser.input(name: "account.firstName")
  end
  def lastname
    @browser.input(name: "account.lastName")
  end
  def email
    @browser.input(name: "account.email")
  end
  def phone
    @browser.input(name: "account.phone")
  end
  def address1
    @browser.input(name: "account.address1")
  end
  def address2
    @browser.input(name: "account.address2")
  end
  def city
    @browser.input(name: "account.city")
  end
  def state
    @browser.input(name: "account.state")
  end
  def zipcode
    @browser.input(name: "account.zip")
  end
  def country
    @browser.input(name: "account.country")
  end
  def submitbutton
    @browser.input(value: "Save Account Information")
  end
end