Given /^a question$/ do
    visit '/' 
    page.should have_content "O lugar que voce vai vende bebida?"    
end

When /^I answer yes$/ do
  select('Yes')
  click_button('Answer')
end

Then /^I get a result$/ do
  page.should have_content "Bar"
end