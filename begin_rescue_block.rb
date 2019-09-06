begin
  # put code at risk of failing here
rescue TypeError
  # take action
rescue ArgumentError
  # take a different action
end




--------


begin
  # code at risk of failing here
rescue StandardError => e # storing the exception object in e
  puts e.message  # output error message
end
