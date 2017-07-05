require 'rails_helper'

describe Post do
  it { should validate_presence_of :description }
  it { should validate_presence_of :author }

  it { should have_many :tags }
  it { should belong_to :user }
end
