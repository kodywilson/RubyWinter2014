Given(/^I have entered (\d+) into the converter$/) do |arg1|
  @converter = Converter.new arg1
end

Given(/^I set the type to "(.*?)"$/) do |type|
  @converter.type = type
end

When(/^I press convert$/) do
  @result = @converter.convert
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  @result.should eq "#{arg1}.#{arg2}".float
end