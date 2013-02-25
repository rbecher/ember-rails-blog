Then /^show me the response headers$/ do
  puts last_response.headers
  true
end