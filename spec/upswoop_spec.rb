require 'spec_helper'

Upswoop::TESTING = true
Upswoop::BASE_URL = "http://localhost:3000/api/v0"

describe Upswoop do
  it 'has a version number' do
    expect(Upswoop::VERSION).not_to be nil
  end

  it "adds an event" do
    Upswoop.post("Some event here.")
  end
end
