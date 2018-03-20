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

  it "Last person in array should be called Rozalin Adamiec" do
    expect(@file.json_customer_file.last["first_name"]).to eq("Rozalin")
    expect(@file.json_customer_file.last["last_name"]).to eq("Adamiec")
  end

  it "All phone numbers are less than 10 digits" do
    @file.json_customer_file.each do |phone|
      expect(phone["Phone_number"]["mobile"].first.length).to eq(10)
      expect(phone["Phone_number"]["mobile"].last.length).to eq(10)

    end
  end



end
