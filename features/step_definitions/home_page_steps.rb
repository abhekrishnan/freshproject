Given(/^I land on jpetstore home page$/) do
  @browser.goto "https://petstore.octoperf.com/"
  LOGGER.info "I landed on Jpetstore home page with #{BROWSER}"

  @page = Pagelink.new @browser
  @catalog = Catalogpage.new @browser
  @loginpage = Loginpage.new @browser
  @userdetailspage = Userdetailspage.new @browser
end

Then(/^I verify the link is available to enter the store$/) do
  @page.page_link.flash
end

And(/^I click on the link enter the store$/) do
  @page.page_link.click

end

And(/^I verify i landed on the catalog page$/) do
  expect(@catalog.mainimage.exists?).to be true
end

When(/^I click (.*) link$/) do |pet_name|
  # case pet_name
  # when "fish"
  #   @catalog.fishlink.click
  # when "dog"
  #   @catalog.doglink.click
  # when  "reptiles"
  #   @catalog.reptileslink.click
  # when "cats"
  #   @catalog.catslink.click
  # when "birds"
  #   @catalog.birdslinl.cick
  # else
  #   LOGGER.info "wrong petname"
  # end
  #
  @catalog.pet_link(pet_name).click
end

  # if pet_name.eql? "fish"
  #   @catalog.fishlink.click
  # else
  #   @catalog.doglink.click
  # end
  #   sleep 5









