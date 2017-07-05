require 'rails_helper'

describe Tag do
  it { should validate_presence_of :label }

  it { should belong_to :post }
end
