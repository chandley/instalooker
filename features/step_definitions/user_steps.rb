Given(/^I am on the homepage as an anonymous visitor$/) do
  step('I visit the homepage')
end

Then(/^I should be invited to sign up or sign in$/) do
  expect(page).to have_content('Sign up')
  expect(page).to have_content('Sign in')
end

When(/^I click 'sign up'$/) do
  click_link('Sign up')
end

Then(/^I should be invited to enter an email and password$/) do
  expect(page).to have_content('Email')
  expect(page).to have_content('Password')
end

When(/^I sign up$/) do
  step("I click 'sign up'")
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  click_button('Sign up')

end

Then(/^I should be greeted by name$/) do
  expect(page).to have_content('test@example.com')
end

When(/^I sign in as an existing user$/) do
  step('I sign up')
  click_link('Sign out')
  step('I sign in as a new user')
end

When(/^I sign in as a new user$/) do
  click_link('Sign in')
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'password')
  click_button('Log in')
end

Then(/^I should not be signed in$/) do
  expect(page).not_to have_content('test@example.com')
  expect(page).to have_content('Invalid email or password')
end

Given(/^I am a signed in user$/) do
  visit('/')
  step('I sign up')
end