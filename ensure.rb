file = open(file_name, "w")

begin
  # do something with file
rescue
  # handle exception
rescue
  # handle a different exception
ensure
  file.close
  # executes every time
end
