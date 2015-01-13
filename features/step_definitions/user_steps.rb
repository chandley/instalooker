Given(/^I am on the homepage as an anonymous visitor$/) do
  step('I visit the homepage')
end

Then(/^I should be invited to sign up or sign in$/) do
  expect(page).to have_content('sign up')
  expect(page).to have_content('sign in')
end

When(/^I click 'sign up'$/) do
  click_link('sign up')
end

Then(/^I should be invited to enter an email and password$/) do
  expect(page).to have_content('email')
  expect(page).to have_content('password')
end

When(/^I sign up$/) do
  step("I click 'sign up'")
  fill_in('email', with: 'test@example.com')
  fill_in('password', with: 'password')
  fill_in('password_confirmation', with: 'password')
  click_button('submit')

end

Then(/^I should be greeted by name$/) do
  expect(page).to have_content('test@example.com')
end

When(/^I sign in as an existing user$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sign in as a new user$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not be signed in$/) do
  pending # express the regexp above with the code you wish you had
end