require 'spec_helper'

describe CustomerInfo do

  before(:each) do
    @file = CustomerInfo.new('json_mock.json')
  end

  it "all names are a string" do
    # expect(@data.json_customer_file.first["first_name"]).to be_a String
    # expect(@data.json_customer_file.first["last_name"]).to be_a String

    @file.json_customer_file.each do |name|
      expect(name['first_name']).to be_instance_of(String)
      expect(name['last_name']).to be_instance_of(String)
    end

  end


end
