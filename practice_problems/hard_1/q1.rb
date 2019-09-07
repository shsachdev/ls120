class SecretFile
  def initialize(secret_data, logger)
    @logger = logger
    @data = secret_data
  end

  def data
    @logger.create_log_entry
    @data
  end
end
