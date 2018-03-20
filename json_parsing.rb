require "json"

class CustomerInfo
  attr_reader :json_customer_file

  def initialize(json_customer_file)
    @json_customer_file = JSON.parse(File.read(json_customer_file))

  end

end
