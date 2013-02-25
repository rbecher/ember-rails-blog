Then /^show me the response headers$/ do
  puts last_response.headers
  true
end

When /^(?:I )request the newly created resource$/ do
  location = last_response.headers['Location']
  step("I send a GET request to \"#{location}\"")
end

Given /^I am simulating a remote request$/ do
  header "REMOTE-ADDR", "10.0.1.1"
end
