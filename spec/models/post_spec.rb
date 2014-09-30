require 'rails_helper'

describe Post do
  it { should validate_presence_of :content }
  it { should validate_presence_of :user_id }
end
