require 'rails_helper'

describe SchoolClass do
  it 'can be created' do
    school_class = build(:school_class)

    expect(school_class).to be_valid
  end

end
