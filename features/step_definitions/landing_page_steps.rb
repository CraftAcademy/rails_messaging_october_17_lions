When("I am on the landing page") do
  visit root_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

When("I press the {string} button") do |link|
  click_link_or_button link
end

Then("I am on the {string} page") do |path|
  if path == 'landing'
    expect(page.current_path).to eq root_path
  else
    expect(page.current_path).to eq "/users/#{path}"
  end
end
