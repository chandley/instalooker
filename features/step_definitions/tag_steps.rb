When(/^I add a tag to a picture$/) do
  click_link('tiddles')
  click_link('add tags')
  fill_in('Category', with: 'cat')
  click_button('Create Tag')
end

Then(/^I should see the tag$/) do
  expect(page).to have_content('cat')
end

Given(/^I have added a picture$/) do
  step('I visit the homepage')
  step('I sign up')
  step('I add a picture with a caption')
end