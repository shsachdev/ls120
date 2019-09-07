class SecretFile
  attr_reader :data

  def initialize(secret_data, logger)
    @logger = logger
    @data = secret_data
  end

  def data
    @logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry

  end
end
