Given(/^user able to login to the home page$/) do
  $browser.goto "https://petstore.octoperf.com/"
  puts "I landed on Jpetstore home page"

  $page = Pagelink.new
  $catalog = Catalogpage.new
  $loginpage = Loginpage.new
  $userdetailspage = Userdetailspage.new
end

Then(/^I verify the link is available to enter the store$/) do
  $page.page_link.flash
end

And(/^I click on the link enter the store$/) do
  $page.page_link.click

end

And(/^I verify i landed on the catalog page$/) do
  expect($catalog.mainimage.exists?).to be true
end

When(/^I click (.*) link$/) do |pet_name|
  # case pet_name
  # when "fish"
  #   $catalog.fishlink.click
  # when "dog"
  #   $catalog.doglink.click
  # when  "reptiles"
  #   $catalog.reptileslink.click
  # when "cats"
  #   $catalog.catslink.click
  # when "birds"
  #   $catalog.birdslinl.cick
  # else
  #   puts "wrong petname"
  # end
  #
  $catalog.pet_link(pet_name).click
end

  # if pet_name.eql? "fish"
  #   $catalog.fishlink.click
  # else
  #   $catalog.doglink.click
  # end
  #   sleep 5

When(/^I enter the signup page$/) do
  $userdetails = User_details.new
  $catalog.signuplink.click
  expect($loginpage.register_link.exists?).to be true
  end

And(/^I click the reqister now button$/) do
  if $loginpage.register_link.exists?
    $loginpage.register_link.click
  else
    raise "ERROR: Register link not available"
  end


end

And(/^I enter the user details$/) do

  expect($userdetailspage.user_info.exists?).to be true
  # $userdetailspage.user_info.flash

  puts "Text exists::#{$userdetailspage.userid.exists?}"


  user_id = "#{$userdetails.details["userid"]}_#{rand(1000)}"

  $userdetailspage.userid.set user_id
  puts "User_id::::#{user_id}"

  $userdetailspage.password.set $userdetails.details["password"]
  $userdetailspage.repeatpassword.set $userdetails.details["password"]
  $userdetailspage.firstname.set $userdetails.details["firstname"]
  $userdetailspage.lastname.set $userdetails.details["lastname"]
  $userdetailspage.email.set $userdetails.details["email"]
  $userdetailspage.phone.set $userdetails.details["phone"]
  $userdetailspage.address1.set $userdetails.details["address1"]
  $userdetailspage.address2.set $userdetails.details["address2"]
  $userdetailspage.city.set $userdetails.details["city"]
  $userdetailspage.state.set $userdetails.details["state"]
  $userdetailspage.zipcode.set $userdetails.details["zipcode"]
  $userdetailspage.country.set $userdetails.details["country"]

  $userdetailspage.submitbutton.click


end

And(/^I enter the user details for user (.*)$/) do |first_name|


  multi_usr_hash = $userdetails.multi_user_details.find{|h|h["firstname"].eql? first_name}.to_h


  user_id = "#{multi_usr_hash["userid"]}_#{rand(1000)}"

  $userdetailspage.userid.set user_id
  puts "User_id::::#{user_id}"

  $userdetailspage.password.set multi_usr_hash["password"]
  $userdetailspage.repeatpassword.set multi_usr_hash["password"]
  $userdetailspage.firstname.set multi_usr_hash["firstname"]
  $userdetailspage.lastname.set multi_usr_hash["lastname"]
  $userdetailspage.email.set multi_usr_hash["email"]
  $userdetailspage.phone.set multi_usr_hash["phone"]
  $userdetailspage.address1.set multi_usr_hash["address1"]
  $userdetailspage.address2.set multi_usr_hash["address2"]
  $userdetailspage.city.set multi_usr_hash["city"]
  $userdetailspage.state.set multi_usr_hash["state"]
  $userdetailspage.zipcode.set multi_usr_hash["zipcode"]
  $userdetailspage.country.set multi_usr_hash["country"]

  $userdetailspage.submitbutton.click


end



And(/^The user able to login in with the details (.*) and (.*)$/) do |userid,password|
  $loginpage.username.set userid
  $loginpage.userpassword.set password
  $loginpage.loginbutton.click
end

Then(/^I verify I landed on the welcome page(?: for (.*))?$/) do |firstname|
  # $catalog.welcomeline.flash
  # expect($catalog.welcomeline.text.include? $userdetails.details["firstname"]).to be true

  x = firstname.nil? ? $userdetails.details["firstname"] : firstname
  expect($catalog.welcomeline.text.include? x).to be true
end

