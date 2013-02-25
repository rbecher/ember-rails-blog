Given /^the following (.+) exist$/ do |model, table|
  # Find out which model to load
  model_instance = model.singularize.classify.constantize
  # Now create the instances from the input
  model_instance.create!(table.hashes)
end
