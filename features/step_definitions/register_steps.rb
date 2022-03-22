And(/^I enter the user details$/) do

  expect(@userdetailspage.user_info.exists?).to be true
  # @userdetailspage.user_info.flash

  LOGGER.info "Text exists::#{@userdetailspage.userid.exists?}"


  user_id = "#{$userdetails.details["userid"]}_#{rand(1000)}"

  @userdetailspage.userid.send_keys user_id
  LOGGER.info "User_id::::#{user_id}"

  @userdetailspage.password.send_keys $userdetails.details["password"]
  @userdetailspage.repeatpassword.send_keys $userdetails.details["password"]
  @userdetailspage.firstname.send_keys $userdetails.details["firstname"]
  @userdetailspage.lastname.send_keys $userdetails.details["lastname"]
  @userdetailspage.email.send_keys $userdetails.details["email"]
  @userdetailspage.phone.send_keys $userdetails.details["phone"]
  @userdetailspage.address1.send_keys $userdetails.details["address1"]
  @userdetailspage.address2.send_keys $userdetails.details["address2"]
  @userdetailspage.city.send_keys $userdetails.details["city"]
  @userdetailspage.state.send_keys $userdetails.details["state"]
  @userdetailspage.zipcode.send_keys $userdetails.details["zipcode"]
  @userdetailspage.country.send_keys $userdetails.details["country"]

  @userdetailspage.submitbutton.click


end

And(/^I enter the user details for user (.*)$/) do |first_name|


  multi_usr_hash = $userdetails.multi_user_details.find{|h|h["firstname"].eql? first_name}.to_h


  user_id = "#{multi_usr_hash["userid"]}_#{rand(1000)}"

  @userdetailspage.userid.send_keys user_id
  LOGGER.info "User_id::::#{user_id}"

  @userdetailspage.password.send_keys multi_usr_hash["password"]
  @userdetailspage.repeatpassword.send_keys multi_usr_hash["password"]
  @userdetailspage.firstname.send_keys multi_usr_hash["firstname"]
  @userdetailspage.lastname.send_keys multi_usr_hash["lastname"]
  @userdetailspage.email.send_keys multi_usr_hash["email"]
  @userdetailspage.phone.send_keys multi_usr_hash["phone"]
  @userdetailspage.address1.send_keys multi_usr_hash["address1"]
  @userdetailspage.address2.send_keys multi_usr_hash["address2"]
  @userdetailspage.city.send_keys multi_usr_hash["city"]
  @userdetailspage.state.send_keys multi_usr_hash["state"]
  @userdetailspage.zipcode.send_keys multi_usr_hash["zipcode"]
  @userdetailspage.country.send_keys multi_usr_hash["country"]

  @userdetailspage.submitbutton.click


end