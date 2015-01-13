Given(/^no pictures have been added yet$/) do

end

When(/^I visit the homepage$/) do
  visit ('/')
end

Then(/^I should see 'no pictures yet'$/) do
  expect(page).to have_content('no pictures yet')
end

Given(/^I am on the homepage$/) do
  step('I am on the homepage')
end

When(/^I add a picture with a caption$/) do
  click('add picture')
  attach_file 'picture', Rails.root.join('features/images/cat.jpg')
  fill_in('caption', with: "tiddles")
  click_button('add picture')
end

Then(/^I should see the picture on the homepage$/) do
  expect(page).to have_content('tiddles')
end