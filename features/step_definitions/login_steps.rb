When(/^I enter the signup page$/) do
  $userdetails = User_details.new
  @catalog.signuplink.click
  expect(@loginpage.register_link.exists?).to be true
end

And(/^I click the reqister now button$/) do
  if @loginpage.register_link.exists?
    @loginpage.register_link.click
  else
    raise "ERROR: Register link not available"
  end
end

And(/^The user able to login in with the details (.*) and (.*)$/) do |userid,password|
  @loginpage.username.set userid
  @loginpage.userpassword.set password

  @loginpage.loginbutton.click
end

Then(/^I verify I landed on the welcome page(?: for (.*))?$/) do |firstname|
  # @catalog.welcomeline.flash
  # expect(@catalog.welcomeline.text.include? $userdetails.details["firstname"]).to be true

  x = firstname.nil? ? $userdetails.details["firstname"] : firstname
  expect(@catalog.welcomeline.text.include? x).to be true
end

Then(/^I verify that I got error message$/) do
  err_msg = 'Invalid username or password. Signon failed.'
  expect(@loginpage.error_message.text.eql? err_msg).to be true
  expect(@loginpage.error_message.text).to eql err_msg
end