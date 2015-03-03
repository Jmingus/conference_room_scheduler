Given(/^I am not logged in$/) do
  # not logged in
end

Given(/^I have a valid account$/) do
  User.create!(email: 'user@example.com',
      password: 'password',
      first_name: 'Tim',
      last_name: 'Frank',
      favorite_color: 'blue',
      date_of_birth: '7/2/1992')
end

When(/^I pick "(.*?)" from user_date_of_birth_(\d+)i$/) do |item, select_box|
  select(item, :from => select_box)
end

When(/^I pick "(.*?)" from user_favorite_color$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
