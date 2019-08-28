class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def empty_line
    num = @message.chars.size
    puts("|" + " "*num +  "|")
  end

  def horizontal_rule
    num = @message.chars.size
    puts ("+" + "-"*num + "+")
  end

  def message_line
    puts "|#{@message}|"
  end
end


banner = Banner.new('To boldly go where no one has gone before.')
puts banner

# banner = Banner.new('')
# puts banner
