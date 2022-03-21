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